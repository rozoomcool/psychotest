import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/ui_constants.dart';

class SecondaryExtendedButton extends StatefulWidget {
  const SecondaryExtendedButton(
      {super.key,
      required this.text,
      required this.extendedChild,
      required this.defaultHeight,
      this.margin = 8});

  final Widget text;
  final Widget extendedChild;
  final double defaultHeight;
  final double margin;

  @override
  State<SecondaryExtendedButton> createState() =>
      _SecondaryExtendedButtonState();
}

class _SecondaryExtendedButtonState extends State<SecondaryExtendedButton> {
  bool isExtended = false;

  void toggleExtend() => setState(() => isExtended = !isExtended);

  @override
  void didUpdateWidget(covariant SecondaryExtendedButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.extendedChild.key != oldWidget.extendedChild.key) {
      setState(() {
        isExtended = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: secondaryTextColor,
                  side: const BorderSide(color: secondaryColor),
                  backgroundColor: secondaryColor,
                ),
                onPressed: toggleExtend,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(flex: 8, child: widget.text),
                    Expanded(
                      flex: 1,
                      child: Icon(
                          isExtended ? Iconsax.arrow_up_2 : Iconsax.arrow_down_14),
                    )
                  ],
                ))),
        isExtended
            ? widget.extendedChild
            : SizedBox(
                height: widget.defaultHeight,
              ),
        SizedBox(
          height: widget.margin,
        )
      ],
    );
  }
}
