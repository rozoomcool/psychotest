import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:psyhotest/models/question.dart';
import 'package:psyhotest/screens/components/custom_bottom_navigation.dart';
import 'package:psyhotest/screens/components/test_drop_down_menu.dart';

import '../utils/ui_constants.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  List<Question> questions = List.empty(growable: true);
  Question? question;
  List<String> answers = List.empty(growable: true);
  bool isAnswered = false;
  String? currentAnswer;

  void toggleAnsweredToTrue() => setState(() => isAnswered = true);

  void toggleAnsweredToFalse() => setState(() => isAnswered = false);

  void updateCurrentAnswer(String? value) {
    setState(() => currentAnswer = value);
    toggleAnsweredToTrue();
  }

  @override
  void initState() {
    super.initState();
    loadQuestions();
  }

  void loadQuestions() async {
    String jsonString = await rootBundle.loadString("assets/test.json");
    List<dynamic> data =
        (json.decode(jsonString) as Map<String, dynamic>)["questions"];
    setState(() {
      data.forEach((el) => questions.add(Question.fromJson(el)));
    });
    nextQuestion();
  }

  void nextQuestion() {
    debugPrint(answers.toString());
    if (questions.isNotEmpty) {
      setState(() {
        question = questions.removeAt(0);
      });
    }
    if (questions.isEmpty) {
      GoRouter.of(context).push('/results', extra: answers);
    }
    toggleAnsweredToFalse();
    updateCurrentAnswer(null);
  }

  void addAnswer() {
    if (currentAnswer != null) {
      setState(() {
        answers.add(currentAnswer!);
      });
      nextQuestion();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigation(
        onPressed: () => context.pop(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31),
          child: question != null
              ? SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 36,),
                      Text(question!.question!, style: h2TextStyle),
                      const SizedBox(
                        height: 32,
                      ),
                      TestDropDownMenu(
                          text: "Диагностика",
                          items: question!.answers!
                              .map<String>((value) => value.pattern!)
                              .toList(),
                          defaultHeight: 0,
                          onChange: (value) {
                            var q = question!.answers!
                                .firstWhere((v) => v.pattern == value);
                            updateCurrentAnswer(q.psychotype!);
                          }),
                      const SizedBox(
                        height: 12,
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
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                    padding: const EdgeInsets.all(20),
                                    child: Text(
                                      question!.answers!
                                          .firstWhere((v) =>
                                              v.psychotype == currentAnswer!)
                                          .pattern!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(color: secondaryTextColor),
                                    ),
                                  ),
                                  const SizedBox(height: 36,)
                                ],
                              )
                            : const SizedBox(),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      isAnswered
                          ? SizedBox(
                              height: 44,
                              width: 154,
                              child: ElevatedButton(
                                onPressed: addAnswer,
                                child: const Text("Далее"),
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                )
              : const SizedBox(),
        ),
      ),
    );
  }
}
