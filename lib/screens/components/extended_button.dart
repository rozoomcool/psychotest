import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ExtendedButton extends StatefulWidget {
  const ExtendedButton(
      {super.key, required this.text, required this.extendedChild, required this.defaultHeight, this.margin = 8});

  final String text;
  final Widget extendedChild;
  final double defaultHeight;
  final double margin;

  @override
  State<ExtendedButton> createState() => _ExtendedButtonState();
}

class _ExtendedButtonState extends State<ExtendedButton> {
  bool isExtended = false;

  void toggleExtend() => setState(() => isExtended = !isExtended);

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
                style: const ButtonStyle(),
                onPressed: toggleExtend,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(widget.text),
                    Icon(
                        isExtended ? Iconsax.arrow_up_2 : Iconsax.arrow_down_14)
                  ],
                ))),
        AnimatedOpacity(
            opacity: isExtended ? 1 : 0,
            duration: const Duration(milliseconds: 300),
            child: isExtended
                ? widget.extendedChild
                : SizedBox(
                    height: widget.defaultHeight,
                  )),
        SizedBox(height: widget.margin,)
      ],
    );
  }
}
