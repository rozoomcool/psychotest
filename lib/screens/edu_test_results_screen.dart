import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:psyhotest/utils/ui_constants.dart';

import 'components/custom_bottom_navigation.dart';

class EduTestResultsScreen extends StatefulWidget {
  const EduTestResultsScreen({super.key});

  @override
  State<EduTestResultsScreen> createState() => _EduTestResultsScreenState();
}

class _EduTestResultsScreenState extends State<EduTestResultsScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigation(
        onPressed: () => context.pushReplacementNamed("/"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/checkmark.png"))
            ),
          ),
          const SizedBox(height: 16,),
          const Text("Тест завершен", style: hTextStyle, textAlign: TextAlign.center,),
          const SizedBox(height: 32,),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFF6FE02B), width: 1),
              borderRadius: BorderRadius.circular(12)
            ),
            child: const Text("10 правильных ответов", overflow: TextOverflow.ellipsis,),
          ),
          const SizedBox(height: 8,),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE02B2B), width: 1),
                borderRadius: BorderRadius.circular(12)
            ),
            child: const Text("10 не правильных ответов", overflow: TextOverflow.ellipsis,),
          )
        ],
      ),
    );
  }
}
