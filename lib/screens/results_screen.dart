import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:psyhotest/models/save_result_entity.dart';
import 'package:psyhotest/models/test_result.dart';
import 'package:psyhotest/screens/components/custom_bottom_navigation.dart';
import 'package:psyhotest/service/test_result_service.dart';
import 'package:psyhotest/utils/constants.dart';
import 'package:uuid/uuid.dart';

import '../models/question.dart';
import '../utils/ui_constants.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({super.key});

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  Map<String, double>? answers;
  Map<String, String> data = {};
  final descriptionController = TextEditingController();
  bool _validate = true;
  late SaveResultEntity saveResultEntity;

  @override
  void initState() {
    super.initState();
    // Future.delayed(const Duration(milliseconds: 1000), () => some());
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    some();
  }

  void notValidate() => setState(() => _validate = false);

  void validate() => setState(() => _validate = true);

  void countDuplicates(List<String> list) {
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

    setState(() {
      answers = counts;
    });
  }

  void some() async {
    SaveResultEntity entity = GoRouterState.of(context).extra! as SaveResultEntity;
    setState(() {
      descriptionController.text = entity.title ?? "";
      saveResultEntity = entity;
      data = entity.answers;
    });
    debugPrint("RESULTS_SCREEN: $data");
    performData();
  }

  void performData() async {
    List<String> patterns = data.values.toList();
    List<Question> questions = await loadQuestions();

    List<String> results = List.empty(growable: true);
    for (int i = 0; i < questions.length; i++) {
      var ans = questions[i].answers!;
      for (int j = 0; j < ans.length; j++) {
        if (patterns.contains(ans[j].pattern)) {
          results.add(ans[j].psychotype!);
          break;
        }
      }
    }
    countDuplicates(results);
  }

  Future<List<Question>> loadQuestions() async {
    String? js = await rootBundle.loadString("assets/test.json");
    List<dynamic> d = (json.decode(js ?? "") as Map<String, dynamic>)["questions"];
    return d.map<Question>((el) => Question.fromJson(el)).toList();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: CustomBottomNavigation(
        onPressed: () => context.go("/"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(
                  height: 36,
                ),
                const Text("Анализ завершен", style: h2TextStyle),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  "Краткое описание",
                  style: hintTextStyle,
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: double.infinity,
                  // height: 52,
                  child: TextField(
                    onChanged: (value) =>
                        {value.isNotEmpty ? validate() : notValidate()},
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.black),
                    controller: descriptionController,
                    decoration: InputDecoration(
                        hintText: "Введите текст",
                        errorText: !_validate
                            ? "Значение не должно быть пустым"
                            : null,
                        hintStyle: hintTextStyle,
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.white))),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (descriptionController.value.text.isNotEmpty) {
                        // List<MapEntry<String, double>> results = answers!.entries.toList()..sort((a, b) => a.value.compareTo(b.value));
                        // MapEntry<String, double>? first = results.isNotEmpty ? results.removeAt(0) : null;
                        // MapEntry<String, double>? second = results.isNotEmpty ? results.removeAt(0) : null;
                        // TestResult result = TestResult(
                        //     comment: descriptionController.value.text,
                        //     results: Map.from({
                        //       first?.key : first?.value,
                        //       second?.key : second?.value
                        //     })
                        // );

                        if (answers == null || answers!.isEmpty) {
                          context.go("/");
                        }
                        Map<String, double> resMap = Map.from({
                          answers?.entries.first.key:
                              answers?.entries.first.value,
                        });
                        if (answers!.length > 1) {
                          resMap.addAll({
                            answers!.entries.toList()[1].key:
                                answers!.entries.toList()[1].value
                          });
                        }
                        TestResult result = TestResult(
                            id: saveResultEntity.id ?? const Uuid().v1(),
                            comment: descriptionController.value.text,
                            results: resMap,
                            answers: data);
                        GetIt.I<TestResultService>().addTestResult(result);
                        context.go("/resultsplach");
                      } else {
                        notValidate();
                      }
                    },
                    child: const Text("Сохранить результат")),
                const SizedBox(
                  height: 32,
                ),
                answers == null
                    ? const SizedBox()
                    : Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: primaryColor, width: 1)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 24),
                        child: ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            String key = answers!.entries.toList()[index].key;
                            double value =
                                answers!.entries.toList()[index].value;
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(key),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor:
                                          Color(psychotypes[key] ?? 0xFFFFFFFF),
                                    )
                                  ],
                                ),
                                Text(
                                    "${answers!.entries.toList()[index].value}%")
                              ],
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) =>
                              const SizedBox(height: 48, child: Divider()),
                          itemCount: answers!.length,
                        ),
                      ),
                const SizedBox(
                  height: 36,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
