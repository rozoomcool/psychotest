import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:psyhotest/models/question.dart';
import 'package:psyhotest/models/save_result_entity.dart';
import 'package:psyhotest/screens/components/custom_bottom_navigation.dart';
import 'package:psyhotest/screens/components/test_drop_down_menu.dart';

import '../models/test_result.dart';
import '../utils/ui_constants.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  List<Question> questions = List.empty(growable: true);
  Question? currentQuestion;
  Map<String, String> answers = {};

  String? currentAnswer;
  String? currentChapter;
  final ScrollController _controller = ScrollController();
  TestResult? oldTestResult;
  bool isExtraFetched = false;

  @override
  void initState() {
    super.initState();
    loadQuestions();
    // Future.delayed(const Duration(milliseconds: 500), () => some());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    some();
  }

  void changeIsNew(TestResult value) {
    setState(() {
      oldTestResult = value;
    });
    debugPrint("TEST_SCREEN load oldTestResult: $oldTestResult");
  }

  void _scrollDown() {
    _controller.animateTo(
      _controller.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  void loadQuestions() async {
    String jsonString = await rootBundle.loadString("assets/test.json");
    List<dynamic> data =
        (json.decode(jsonString) as Map<String, dynamic>)["questions"];
    setState(() {
      data.forEach((el) => questions.add(Question.fromJson(el)));
    });
    // updateQuestion(questions[0]);
  }

  updateAnswer(String? value) {
    setState(() {
      currentAnswer = value;
    });
    addAnswer(value);
  }

  updateQuestion(Question? value) {
    setState(() {
      currentQuestion = value;
    });
    updateAnswer(null);
  }

  void addAnswer(String? value) {
    if (currentAnswer != null && value != null) {
      setState(() {
        answers[currentQuestion!.chapter!] = value;
      });
      debugPrint(":: Update add answer: $answers");
    }
  }

  bool isMarkedChapter(String value) {
    return answers.keys.contains(value);
  }

  bool isMarkedQuestion(String value) {
    try {
      return answers.values.contains(value);
    } catch (e) {
      return false;
    }
  }

  void some() async {
    if (isExtraFetched) {
      return;
    }
    debugPrint("PROCESS SOME");
    var extra = GoRouterState.of(context).extra as TestResult?;

    if (extra != null) {
      changeIsNew(extra);
      setState(() {
        answers.addEntries(extra.answers.entries);
        debugPrint("TEST_RESULT answers: $answers");
      });
    }

    setState(() {
      isExtraFetched = true;
    });
  }

  Map<String, double> countDuplicates(List<String> list) {
    Map<String, double> counts = {};

    list.forEach((element) {
      counts[element] = (counts[element] ?? 0) + 1;
    });

    int totalCount = list.length;

    counts.forEach((key, value) {
      double percentage = (value / totalCount) * 100;
      counts[key] = double.parse(percentage.toStringAsFixed(2));
    });

    counts = Map.fromEntries(
        counts.entries.toList()..sort((a, b) => b.value.compareTo(a.value)));

    return counts;
  }

  void getAllAnswers() {
    List<Answers> ansList = [];
    questions.forEach((v) => ansList.addAll(v.answers!));
    ansList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31),
          child: SingleChildScrollView(
            controller: _controller,
            child: Column(
              children: [
                const SizedBox(
                  height: 36,
                ),
                Text(currentQuestion == null ? "" : currentQuestion!.question!,
                    style: h2TextStyle),
                const SizedBox(
                  height: 32,
                ),
                TestDropDownMenu(
                  text: "Раздел",
                  textMaxLines: 1,
                  items: questions.map<String>((el) => el.chapter!).toList(),
                  defaultHeight: 0,
                  onChange: (value) {
                    var q = questions.where((el) => el.chapter == value).first;
                    updateQuestion(q);
                  },
                  isMarked: isMarkedChapter,
                ),
                const SizedBox(
                  height: 12,
                ),
                TestDropDownMenu(
                  text: 'Маркер',
                  items: currentQuestion == null
                      ? []
                      : currentQuestion!.answers!
                          .map<String>((el) => el.pattern!)
                          .toList(),
                  defaultHeight: 0,
                  onChange: (value) {
                    updateAnswer(value);
                    _scrollDown();
                  },
                  textMaxLines: 2,
                  isMarked: isMarkedQuestion,
                ),
                SizedBox(
                  width: double.infinity,
                  child: currentAnswer != null
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Ваш ответ",
                              style: hintTextStyle,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                currentQuestion!.answers!
                                    .firstWhere(
                                        (v) => v.pattern == currentAnswer!)
                                    .pattern!,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(color: secondaryTextColor),
                              ),
                            )
                          ],
                        )
                      : const SizedBox(),
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                        onPressed: () {
                          debugPrint(":::ANS::: ${answers.toString()}");
                          GoRouter.of(context)
                            .push('/results', extra: SaveResultEntity(answers: answers, title: oldTestResult?.comment, id: oldTestResult?.id));
                        },
                        child: const Text("Добавить в избранное")),
                const SizedBox(
                  height: 24,
                ),
                CustomBottomNavigation(
                  onPressed: () => context.pop(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
