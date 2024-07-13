import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:go_router/go_router.dart';
import 'package:psyhotest/models/psychotypes_desc.dart';
import 'package:psyhotest/screens/components/extended_drop_down_menu.dart';
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
  int selectedPsychoIndex = 0;

  void loadData() async {
    var temp = await rootBundle.loadString('assets/desc_data.json');
    setState(() {
      psychotypesDesc = PsychotypesDesc.fromJson(json.decode(temp));
    });
  }

  void updateData(String value) async {
    int index = psychotypesDesc!.psychotypes.indexWhere((psycho) => psycho.psychotype == value);
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
                const SizedBox(height: 32,),
                const Text("Информация", style: hTextStyle,),
                const SizedBox(height: 16,),
                ExtendedDropDownMenu(
                    text: const Text("Психотипы", overflow: TextOverflow.ellipsis),
                    items: psychotypes,
                    defaultHeight: 0,
                    onChange: (value) => updateData(value)
                ),
                const SizedBox(height: 16,),
                Text(psychotypesDesc == null ? "Совет" : "", style: hintTextStyle,),

                const SizedBox(height: 16,),
                CustomBottomNavigation(onPressed: () => context.pop(),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
