import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:psyhotest/models/test_result.dart';
import 'package:psyhotest/screens/components/extended_button.dart';
import 'package:psyhotest/screens/components/favorite_button.dart';
import 'package:psyhotest/service/test_result_service.dart';
import 'package:psyhotest/utils/constants.dart';
import 'package:psyhotest/utils/ui_constants.dart';

import 'components/custom_bottom_navigation.dart';
import 'components/secondary_extended_button.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<TestResult>? results;

  @override
  void initState() {
    super.initState();
    loadResults();
  }

  void loadResults() {
    setState(() => results = GetIt.I<TestResultService>().getTestResults());
    debugPrint("FAVORITE RESULTS: $results");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: CustomBottomNavigation(
      //   onPressed: () => context.pop(),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 24,),
                const Text(
                  style: hTextStyle,
                  "Избранное",
                ),
                const SizedBox(
                  height: 32,
                ),
                results != null
                    ? AnimatedSize(
                        alignment: Alignment.topCenter,
                        duration: const Duration(milliseconds: 250),
                        child: ListView.builder(
                          itemCount: results!.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, i) {
                            return FavoriteButton(
                              onTrashPressed: () {
                                GetIt.I<TestResultService>().deleteResult(
                                    results?[i].id ?? "");
                                loadResults();
                              },
                              text: Text(results![i].comment, overflow: TextOverflow.ellipsis),
                              extendedChild: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: primaryColor, width: 1)),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 24),
                                child: ListView.separated(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  results![i]
                                                      .results
                                                      .entries
                                                      .toList()[index]
                                                      .key,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge,
                                                ),
                                                const SizedBox(width: 4,),
                                                CircleAvatar(
                                                  radius: 6,
                                                  backgroundColor: Color(psychotypes[results?[i]
                                                      .results
                                                      .entries
                                                      .toList()[index]
                                                      .key] ?? 0xFFFFFFFF),
                                                )
                                              ],
                                            ),
                                            Text(
                                              "${results![i].results.entries.toList()[index].value}%",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge,
                                            )
                                          ],
                                        );
                                    },
                                    separatorBuilder: (context, index) =>
                                        const Divider(
                                          height: 44,
                                        ),
                                    itemCount: results![i].results.length),
                              ),
                              defaultHeight: 0, onEditPressed: () {
                              GoRouter.of(context).push('/test', extra: results![i]);
                            },
                            );
                          },
                        ),
                      )
                    : const SizedBox(),
                const SizedBox(height: 16,),
                CustomBottomNavigation(
                  onPressed: () => context.pop(),
                ),
                const SizedBox(height: 24,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
