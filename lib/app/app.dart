import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psyhotest/screens/edu_description.dart';
import 'package:psyhotest/screens/edu_test_photo_screen.dart';
import 'package:psyhotest/screens/edu_test_screen.dart';
import 'package:psyhotest/screens/favorite_screen.dart';
import 'package:psyhotest/screens/impact_screen.dart';
import 'package:psyhotest/screens/result_saved_screen.dart';
import 'package:psyhotest/screens/results_screen.dart';
import 'package:psyhotest/screens/test_screen.dart';
import 'package:psyhotest/utils/ui_constants.dart';

import '../screens/edu_test_results_screen.dart';
import '../screens/home_screen.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/test',
      builder: (context, state) => const TestScreen(),
    ),
    GoRoute(
      path: '/favorite',
      builder: (context, state) => const FavoriteScreen(),
    ),
    GoRoute(
      path: '/impact',
      builder: (context, state) => const ImpactScreen(),
    ),
    GoRoute(
      path: '/edutest',
      builder: (context, state) => const EduTestScreen(),
    ),
    GoRoute(
      path: '/edutestphoto',
      builder: (context, state) => const EduTestPhotoScreen(),
    ),
    GoRoute(
      path: '/edudesc',
      builder: (context, state) => const EduDescription(),
    ),
    GoRoute(
      path: '/results',
      builder: (context, state) => const ResultsScreen(),
    ),
    GoRoute(
      path: '/resultsplach',
      builder: (context, state) => const ResultSavedScreen(),
    ),GoRoute(
      path: '/eduresults',
      builder: (context, state) => const EduTestResultsScreen(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: backgroundColor,
    ));
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: primaryColor,
          background: const Color(0xFF030102),
        ),
        textTheme: GoogleFonts.montserratTextTheme().apply(
          displayColor: Colors.white,
          bodyColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              textStyle: Theme.of(context).textTheme.bodyLarge,
              elevation: 1,
              minimumSize: const Size(double.infinity, 44),
              backgroundColor: primaryColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              textStyle: Theme.of(context).textTheme.bodyLarge,
              elevation: 1,
              minimumSize: const Size(double.infinity, 44),
              foregroundColor: primaryColor,
              side: const BorderSide(color: primaryColor),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white
          )
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.deepOrange,
          splashColor: Colors.deepOrange,
          highlightColor: Colors.deepOrange,
        ),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
