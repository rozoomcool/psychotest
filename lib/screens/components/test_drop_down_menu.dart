import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:psyhotest/utils/ui_constants.dart';

import '../../utils/constants.dart';

class TestDropDownMenu extends StatefulWidget {
  const TestDropDownMenu(
      {super.key,
      required this.text,
      required this.items,
      required this.defaultHeight,
      this.margin = 8,
      required this.onChange,
      required this.textMaxLines,
      required this.isMarked});

  final String text;
  final int textMaxLines;
  final List<String> items;
  final bool Function(String value) isMarked;
  final double defaultHeight;
  final double margin;
  final Function(String) onChange;

  @override
  State<TestDropDownMenu> createState() => _TestDropDownMenuState();
}

class _TestDropDownMenuState extends State<TestDropDownMenu> {
  bool isExtended = false;
  String? selected = null;

  void toggleExtend() => setState(() => isExtended = !isExtended);

  void updateSelected(String? value) {
    setState(() {
      selected = value;
    });
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
                    SizedBox(
                        width: 200,
                        child: Text(
                          selected == null || !widget.items.contains(selected)
                              ? widget.text
                              : selected!,
                          overflow: TextOverflow.ellipsis,
                        )),
                    Icon(
                        isExtended ? Iconsax.arrow_up_2 : Iconsax.arrow_down_14)
                  ],
                ))),
        AnimatedOpacity(
            opacity: isExtended ? 1 : 0,
            duration: const Duration(milliseconds: 300),
            child: isExtended
                ? Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.all(20),
                    child: Wrap(
                      runSpacing: 12,
                      children: widget.items
                          .map<Widget>(
                            (entry) => InkWell(
                              onTap: () {
                                debugPrint("ENTRY:: $entry");
                                updateSelected(entry);
                                toggleExtend();
                                widget.onChange(selected!);
                              },
                              child: SizedBox(
                                  height: 22 * widget.textMaxLines.toDouble(),
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 5,
                                        child: Text(
                                          maxLines: widget.textMaxLines,
                                          overflow: TextOverflow.ellipsis,
                                          entry,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: 0.16,
                                                  color: secondaryTextColor),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 1,
                                          child:
                                              widget.isMarked(entry) ? Image.asset("assets/check.png") : const SizedBox())
                                    ],
                                  )),
                            ),
                          )
                          .toList(),
                    ),
                  )
                : SizedBox(
                    height: widget.defaultHeight,
                  )),
        SizedBox(
          height: widget.margin,
        ),
      ],
    );
  }
}
