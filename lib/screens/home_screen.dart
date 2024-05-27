import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:psyhotest/screens/components/extended_button.dart';
import 'package:psyhotest/utils/ui_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Анализ психотипов",
              textAlign: TextAlign.center,
              style: hTextStyle,
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => context.push("/test"),
                    child: const Text("Тестирование"))),
            const SizedBox(
              height: 14,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => context.push("/favorite"),
                    child: const Text("Избранное"))),
            const SizedBox(
              height: 14,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => context.push("/impact"),
                    child: const Text("Воздействие"))),
            const SizedBox(
              height: 14,
            ),
            ExtendedButton(
                extendedChild: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () => context.push("/edutest"),
                        child: const Text("Тест")),
                    const SizedBox(
                      height: 2,
                    ),
                    ElevatedButton(
                        onPressed: () => context.push("/edutestphoto"),
                        child: const Text("Тест + фото")),
                    const SizedBox(
                      height: 2,
                    ),
                    ElevatedButton(
                        onPressed: () => context.push("/edudesc"),
                        child: const Text("Подробное описание")),
                  ],
                ),
                text: "Обучение", defaultHeight: 148,),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
