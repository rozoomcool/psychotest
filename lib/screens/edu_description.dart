import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:psyhotest/screens/components/extended_drop_down_menu.dart';
import 'package:psyhotest/utils/constants.dart';
import 'package:psyhotest/utils/ui_constants.dart';

import 'components/custom_bottom_navigation.dart';

class EduDescription extends StatelessWidget {
  const EduDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigation(onPressed: () => context.pop(),),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 31, vertical: 32),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Информация", style: hTextStyle,),
                SizedBox(height: 16,),
                ExtendedDropDownMenu(
                    text: "Психотипы",
                    items: psychotypes,
                    defaultHeight: 0,
                    onChange: (c) {}
                ),
                const SizedBox(height: 16,),
                const Text("Совет", style: hintTextStyle,),
                const SizedBox(height: 8,),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white
                  ),
                  padding: const EdgeInsets.all(20),
                  child: const Text("kkjgkdf"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
