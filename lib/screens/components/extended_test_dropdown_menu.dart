import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:psyhotest/utils/ui_constants.dart';

import '../../utils/constants.dart';

class ExtendedTestDropDownMenu extends StatefulWidget {
  const ExtendedTestDropDownMenu(
      {super.key,
      required this.text,
      required this.items,
      required this.defaultHeight,
      this.margin = 8,
      this.enabled = true,
      this.answer,
      required this.onChange});

  final Widget text;
  final String? answer;
  final Map<String, int> items;
  final double defaultHeight;
  final double margin;
  final bool enabled;
  final Function(String) onChange;

  @override
  State<ExtendedTestDropDownMenu> createState() =>
      _ExtendedTestDropDownMenuState();
}

class _ExtendedTestDropDownMenuState extends State<ExtendedTestDropDownMenu> {
  bool isExtended = false;
  String? selected;

  void toggleExtend() => setState(() => isExtended = !isExtended);

  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ExtendedTestDropDownMenu oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.answer != oldWidget.answer) {
      setState(() {
        isExtended = false;
        selected = null;
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
                    SizedBox(
                        width: 200,
                        child: selected == null
                            ? widget.text
                            : Text(
                                selected!,
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
                      runSpacing: 24,
                      children: widget.items.entries
                          .map<Widget>(
                            (entry) => InkWell(
                              onTap: () {
                                if (widget.enabled) {
                                  setState(() {
                                    selected = entry.key;
                                  });
                                  // toggleExtend();
                                  widget.onChange(selected!);
                                }
                              },
                              child: SizedBox(
                                  height: 24,
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 200,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              overflow: TextOverflow.ellipsis,
                                              entry.key,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge
                                                  ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      letterSpacing: 0.16,
                                                      color:
                                                          secondaryTextColor),
                                            ),
                                            const SizedBox(width: 8,),
                                            (widget.answer != null &&
                                                        selected != null) &&
                                                    (widget.answer ==
                                                            selected ||
                                                        (widget.answer ==
                                                            entry.key || selected == entry.key)) && (
                                            selected == entry.key || widget.answer == entry.key
                                            )
                                                ? Image.asset(
                                                    widget.answer == entry.key ? "assets/check.png" : "assets/cross.png")
                                                : const SizedBox()
                                          ],
                                        ),
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Color(entry.value),
                                        radius: 6,
                                      )
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
        )
      ],
    );
  }
}
