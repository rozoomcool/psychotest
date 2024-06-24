import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/ui_constants.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton(
      {super.key,
      required this.text,
      required this.extendedChild,
      required this.defaultHeight,
      required this.onTrashPressed,
      this.margin = 8, required this.onEditPressed});

  final Widget text;
  final Widget extendedChild;
  final double defaultHeight;
  final double margin;
  final Function onTrashPressed;
  final Function onEditPressed;

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isExtended = false;

  void toggleExtend() => setState(() => isExtended = !isExtended);

  @override
  void didUpdateWidget(covariant FavoriteButton oldWidget) {
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
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
                          widget.text,
                          Icon(isExtended
                              ? Iconsax.arrow_up_2
                              : Iconsax.arrow_down_14)
                        ],
                      )),
                ),
                const SizedBox(width: 1,),
                IconButton.filledTonal(
                    style: IconButton.styleFrom(
                        fixedSize: const Size(44, 44),
                        backgroundColor: secondaryTextColor,
                        foregroundColor: secondaryTextColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    onPressed: () {
                      widget.onEditPressed();
                    },
                    icon: Image.asset(
                      "assets/edit.png",
                      color: secondaryColor,
                      width: 24,
                      height: 24,
                    )),
                IconButton.filledTonal(
                    style: IconButton.styleFrom(
                        fixedSize: const Size(44, 44),
                        backgroundColor: secondaryTextColor,
                        foregroundColor: secondaryTextColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    onPressed: () {
                      widget.onTrashPressed();
                    },
                    icon: Image.asset(
                      "assets/trash.png",
                      color: secondaryColor,
                      width: 24,
                      height: 24,
                    )),
              ],
            )),
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
