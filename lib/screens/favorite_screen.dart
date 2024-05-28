import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:psyhotest/models/test_result.dart';
import 'package:psyhotest/service/test_result_service.dart';

import 'components/custom_bottom_navigation.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {

  @override
  void initState() {
    super.initState();
    List<TestResult> data = GetIt.I<TestResultService>().getTestResults();
    debugPrint(data.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigation(onPressed: () => context.pop(),),
    );
  }
}
