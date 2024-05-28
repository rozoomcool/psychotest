import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/test_result.dart';
import '../utils/constants.dart';

class TestResultService {
  final SharedPreferences _sharedPreferences;

  List<TestResult> getTestResults() {
    List<Map<String, dynamic>> data = json.decode(_sharedPreferences.getString(resultsPrefName) ?? "[]");

    return data.map((el) => TestResult.fromJson(el)).toList();
  }

  void addTestResult(TestResult testResult) {
    List<TestResult> data = json.decode(_sharedPreferences.getString(resultsPrefName) ?? "[]").map((el) => TestResult.fromJson(el)).toList();
    data.add(testResult);

    _sharedPreferences.setString(resultsPrefName, json.encode(data));
  }

  TestResultService(this._sharedPreferences);
}