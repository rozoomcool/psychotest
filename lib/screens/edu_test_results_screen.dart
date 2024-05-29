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
  List<bool> data = List.empty(growable: true);

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      data = GoRouterState.of(context).extra! as List<bool>;
    });
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigation(
        onPressed: () => context.go("/"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 56.0),
        child: Column(
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
              child: Text("${data.where((el) => el == true).length} правильных ответов",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 8,),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFE02B2B), width: 1),
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Text("${data.where((el) => el == false).length} не правильных ответов",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
