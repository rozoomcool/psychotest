import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'components/custom_bottom_navigation.dart';

class EduDescription extends StatelessWidget {
  const EduDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigation(onPressed: () => context.pop(),),
    );
  }
}
