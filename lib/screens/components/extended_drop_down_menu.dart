import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:psyhotest/utils/ui_constants.dart';

import '../../utils/constants.dart';

class ExtendedDropDownMenu extends StatefulWidget {
  const ExtendedDropDownMenu(
      {super.key,
      required this.text,
      required this.items,
      required this.defaultHeight,
      this.margin = 8,
      this.enabled = true,
      required this.onChange});

  final Widget text;
  final Map<String, int> items;
  final double defaultHeight;
  final double margin;
  final bool enabled;
  final Function(String) onChange;

  @override
  State<ExtendedDropDownMenu> createState() => _ExtendedDropDownMenuState();
}

class _ExtendedDropDownMenuState extends State<ExtendedDropDownMenu> {
  bool isExtended = false;
  String? selected;

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
                    Expanded(
                      flex: 8,
                      child: selected == null
                          ? widget.text
                          : Text(
                              selected!,
                              overflow: TextOverflow.ellipsis,
                            ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(),
                          Icon(
                              isExtended ? Iconsax.arrow_up_2 : Iconsax.arrow_down_14),
                        ],
                      ),
                    )
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
                                  toggleExtend();
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
                                      Expanded(
                                        flex: 7,
                                        child: Text(
                                          overflow: TextOverflow.ellipsis,
                                          entry.key,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge
                                              ?.copyWith(
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: 0.16,
                                                  color: secondaryTextColor),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const SizedBox(),
                                            CircleAvatar(
                                              backgroundColor: Color(entry.value),
                                              radius: 6,
                                            ),
                                          ],
                                        ),
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
