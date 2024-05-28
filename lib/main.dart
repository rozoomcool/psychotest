import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:psyhotest/service/test_result_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  GetIt.I.registerFactory(() => prefs);
  GetIt.I.registerFactory(() => TestResultService(prefs));

  runApp(const MyApp());
}

