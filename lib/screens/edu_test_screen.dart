import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:psyhotest/models/edu_test_model.dart';
import 'package:psyhotest/screens/components/extended_drop_down_menu.dart';
import 'package:psyhotest/screens/components/secondary_extended_button.dart';
import 'package:psyhotest/utils/constants.dart';
import 'package:psyhotest/utils/ui_constants.dart';

import 'components/custom_bottom_navigation.dart';
import 'components/extended_test_dropdown_menu.dart';

class EduTestScreen extends StatefulWidget {
  const EduTestScreen({super.key});

  @override
  State<EduTestScreen> createState() => _EduTestScreenState();
}

class _EduTestScreenState extends State<EduTestScreen> {
  List<EduTestModel> data = List.empty(growable: true);
  List<bool> answers = List.empty(growable: true);
  String? choice;

  void updateChoice(String? value) => setState(() => choice = value);

  void addAnswer(bool value) => setState(() => answers.add(value));

  void nextQuestion() {
    if (data.isNotEmpty) {
      if (choice != null) {
        addAnswer(choice == data.last.answer);
        setState(() {
          data = data.sublist(0, data.length - 1);
        });
        updateChoice(null);
      }
    }
    if (data.isEmpty) {
      GoRouter.of(context).push('/eduresults', extra: answers);
    }
  }

  @override
  void initState() {
    super.initState();
    loadTest();
  }

  void loadTest() async {
    List<EduTestModel> tmp = json
        .decode(await rootBundle.loadString("assets/edu_test.json"))
        .map<EduTestModel>((el) => EduTestModel.fromJson(el))
        .toList();
    setState(() {
      data = getRandomElements(20, tmp);
    });
  }

  List<EduTestModel> getRandomElements(int count, List<EduTestModel> data) {
    List<int> rand = List.generate(count, (i) => Random().nextInt(data.length));
    List<EduTestModel> res = List.empty(growable: true);
    for (var val in rand) {
      res.add(data[val]);
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31),
          child: SingleChildScrollView(
            child: Column(
              children: [
                data.isEmpty
                    ? const SizedBox()
                    : data.map((el) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const SizedBox(
                              height: 32,
                            ),
                            Text(
                              el.phrase,
                              style: h3TextStyle,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            ExtendedTestDropDownMenu(
                              key: Key(el.id.toString()),
                              text: const Row(
                                children: [
                                  Text("Тип личности",
                                      overflow: TextOverflow.ellipsis)
                                ],
                              ),
                              answer: el.answer,
                              items: psychotypes,
                              enabled: choice == null,
                              defaultHeight: 0,
                              onChange: (value) {
                                if (choice == null) updateChoice(value);
                              }, id: el.id,
                            ),
                            const SizedBox(
                              height: 0,
                            ),
                            SecondaryExtendedButton(
                                text: Text(
                                  "Пояснение",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(color: secondaryTextColor),
                                ),
                                extendedChild: Container(
                                  key: Key(el.id.toString()),
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white),
                                  child: Text(el.desc,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                              color: secondaryTextColor)),
                                ),
                                defaultHeight: 0),
                            const SizedBox(
                              height: 32,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  nextQuestion();
                                },
                                child: const Text("Далее"))
                          ],
                        );
                      }).last,
                const SizedBox(height: 16,),
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
