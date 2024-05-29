import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:go_router/go_router.dart';
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

  String? selected;
  String? data;

  void updateData(String value) async {
    setState(() {
      setState(() => selected = value);
    });
    var temp = await rootBundle.loadString('assets/${psychotypesToAssets[selected]}.md');
    setState(() => data = temp);
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
                Text(data == null ? "" : "Совет", style: hintTextStyle,),
                const SizedBox(height: 8,),
                data == null ? const SizedBox() : Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white
                  ),
                  // padding: const EdgeInsets.all(20),
                  child: Markdown(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    data: data == null ? "" : data!,
                    styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context).copyWith(
                      textTheme: Theme.of(context).textTheme.copyWith().apply(
                        bodyColor: Colors.black,

                      )
                    )),
                  ),
                ),
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
