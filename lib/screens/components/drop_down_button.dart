import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constants.dart';
import '../../utils/ui_constants.dart';

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton({super.key, required this.values, required this.controller});

  final Map<String, int> values;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      controller: controller,
        selectedTrailingIcon: const Icon(Iconsax.arrow_up_2),
        trailingIcon: const Icon(Iconsax.arrow_down_14),
        textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w500,
            letterSpacing: 0.16,
            color: secondaryTextColor),
        menuStyle: const MenuStyle(
            surfaceTintColor: WidgetStatePropertyAll(secondaryTextColor),
            backgroundColor: WidgetStatePropertyAll<Color>(Colors.white)),
        inputDecorationTheme: InputDecorationTheme(
            constraints: const BoxConstraints(maxHeight: 44),
            suffixIconColor: secondaryTextColor,
            focusColor: const Color(0xFF000000),
            // hoverColor: Color(0xFF000000),,
            filled: true,
            fillColor: secondaryColor,
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: secondaryColor),
                borderRadius: BorderRadius.circular(12))),
        width: MediaQuery.of(context).size.width - 64,
        hintText: "Психотип",
        dropdownMenuEntries: values.entries
            .map((entry) => DropdownMenuEntry(
                value: entry.key,
                label: entry.key,
                labelWidget: Text(
                  entry.key,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.16,
                      color: secondaryTextColor),
                ),
                trailingIcon: CircleAvatar(
                  backgroundColor: Color(entry.value),
                  radius: 6,
                )))
            .toList());
  }
}
