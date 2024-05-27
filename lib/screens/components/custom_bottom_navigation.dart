import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key, required this.onPressed});
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () => onPressed(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Вернуться домой", style: Theme.of(context).textTheme.bodyLarge,),
              const SizedBox(
                width: 4,
              ),
              const Icon(Iconsax.home)
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        )
      ],
    );
  }
}
