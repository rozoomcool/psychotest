import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:psyhotest/screens/components/drop_down_button.dart';
import 'package:psyhotest/screens/components/extended_button.dart';
import 'package:psyhotest/screens/components/extended_drop_down_menu.dart';
import 'package:psyhotest/utils/constants.dart';
import 'package:psyhotest/utils/ui_constants.dart';

import '../models/Impact.dart';
import 'components/custom_bottom_navigation.dart';

class ImpactScreen extends StatefulWidget {
  const ImpactScreen({super.key});

  @override
  State<ImpactScreen> createState() => _ImpactScreenState();
}

class _ImpactScreenState extends State<ImpactScreen> {
  String? _psychoValue;
  String? _chapterValue;
  Impact? data;
  String text = "";

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint("::::::::ch");
    if (data != null && _psychoValue != null && _chapterValue != null) {
      setState(() {
        text = data!.impacts.firstWhere((el) {
          return el.chapter == _chapterValue && el.psychotype == _psychoValue;
        }).advice;
      });
    }
  }

  @override
  void didUpdateWidget(ImpactScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    String jsonString = await rootBundle.loadString('assets/impact.json');
    setState(() {
      data = Impact.fromJson(json.decode(jsonString));
    });
  }

  void updatePsychotype(String value) {
    setState(() {
      _psychoValue = value;
    });
    updateText();
  }

  void updateChapter(String value) {
    setState(() {
      _chapterValue = value;
    });
    updateText();
  }

  void updateText() {
    if (data != null && _psychoValue != null && _chapterValue != null) {
      setState(() {
        text = data!.impacts.firstWhere((el) {
          return el.chapter == _chapterValue && el.psychotype == _psychoValue;
        }).advice;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    debugPrint(data?.impacts[0].toString());
    return Scaffold(
      // bottomNavigationBar: CustomBottomNavigation(
      //   onPressed: () => context.pop(),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 34, right: 28),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 24,
                ),
                const Text("Выберите вариант ответа", style: h2TextStyle),
                const SizedBox(
                  height: 24,
                ),
                // CustomDropDownButton(values: psychotypes),
                const SizedBox(
                  height: 8,
                ),
                // CustomDropDownButton(values: impactChapters, controller: _chapterController),

                ExtendedDropDownMenu(
                  text: const Text("Пихотип", overflow: TextOverflow.ellipsis),
                  items: psychotypes,
                  defaultHeight: 0,
                  onChange: (value) => setState(() => updatePsychotype(value)),
                ),
                ExtendedDropDownMenu(
                  text: const Text("Раздел", overflow: TextOverflow.ellipsis),
                  items: impactChapters,
                  defaultHeight: 0,
                  onChange: (value) => setState(() => updateChapter(value)),
                ),
                const SizedBox(height: 17,),
                Text(text != "" ? "Совет" : text),
                const SizedBox(height: 8,),
                text != "" ? Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      text,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: secondaryTextColor),
                    )) : const SizedBox(),
                const SizedBox(
                  height: 12,
                ),
                CustomBottomNavigation(onPressed: () => context.pop(),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
