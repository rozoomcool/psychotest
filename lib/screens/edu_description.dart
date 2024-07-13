import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:go_router/go_router.dart';
import 'package:psyhotest/models/psychotypes_desc.dart';
import 'package:psyhotest/screens/components/extended_drop_down_menu.dart';
import 'package:psyhotest/screens/components/secondary_extended_button.dart';
import 'package:psyhotest/utils/constants.dart';
import 'package:psyhotest/utils/ui_constants.dart';

import 'components/custom_bottom_navigation.dart';

class EduDescription extends StatefulWidget {
  const EduDescription({super.key});

  @override
  State<EduDescription> createState() => _EduDescriptionState();
}

class _EduDescriptionState extends State<EduDescription> {
  PsychotypesDesc? psychotypesDesc;
  int? selectedPsychoIndex;

  void loadData() async {
    var temp = await rootBundle.loadString('assets/desc_data.json');
    // debugPrint(temp);
    setState(() {
      psychotypesDesc = PsychotypesDesc.fromJson(jsonDecode(temp));
    });
  }

  void updateData(String value) async {
    int index = psychotypesDesc!.psychotypes
        .indexWhere((psycho) => psycho.psychotype == value);
    setState(() {
      selectedPsychoIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  "Информация",
                  style: hTextStyle,
                ),
                const SizedBox(
                  height: 16,
                ),
                ExtendedDropDownMenu(
                    text: const Text("Психотипы",
                        overflow: TextOverflow.ellipsis),
                    items: psychotypes,
                    defaultHeight: 0,
                    onChange: (value) => updateData(value)),
                const SizedBox(
                  height: 16,
                ),
                selectedPsychoIndex == null
                    ? const SizedBox()
                    : Column(
                        children: psychotypesDesc!
                            .psychotypes[selectedPsychoIndex!].values
                            .map((value) {
                          return SecondaryExtendedButton(
                              text: Text(
                                value.key,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              extendedChild: Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12)),
                                width: double.infinity,
                                child: Text(
                                  value.value,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(color: secondaryTextColor),
                                ),
                              ),
                              defaultHeight: 0);
                        }).toList(),
                      ),
                const SizedBox(
                  height: 16,
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
