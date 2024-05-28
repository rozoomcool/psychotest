import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:psyhotest/screens/components/custom_bottom_navigation.dart';
import 'package:psyhotest/utils/constants.dart';

import '../utils/ui_constants.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({super.key});

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  Map<String, double>? answers;

  @override
  void initState() {
    super.initState();
  }

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
    setState(() {
      answers = counts;
    });
  }

  void some() {
    var data = GoRouterState.of(context).extra! as List<String>;
    debugPrint(data.toString().toString());
    countDuplicates(data);
  }

  @override
  Widget build(BuildContext context) {
    some();
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigation(
        onPressed: () => context.pushReplacementNamed("/"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31, vertical: 36),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Text("Анализ завершен", style: h2TextStyle),
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
                                    const SizedBox(width: 4,),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Color(psychotypes[key]!),
                                    )
                                  ],
                                ),
                                Text(
                                    "${answers!.entries.toList()[index].value}%")
                              ],
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) =>
                              SizedBox(height: 48, child: const Divider()),
                          itemCount: answers!.length,
                        ),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
