import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utils/ui_constants.dart';
import 'components/custom_bottom_navigation.dart';

class ResultSavedScreen extends StatefulWidget {
  const ResultSavedScreen({super.key});

  @override
  State<ResultSavedScreen> createState() => _ResultSavedScreenState();
}

class _ResultSavedScreenState extends State<ResultSavedScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () => context.pushReplacementNamed("/"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          const Text("Результат сохранен", style: hTextStyle, textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
