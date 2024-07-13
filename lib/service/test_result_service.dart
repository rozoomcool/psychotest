import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/test_result.dart';
import '../utils/constants.dart';

class TestResultService {
  final SharedPreferences _sharedPreferences;

  List<TestResult> getTestResults() {
    List<TestResult> data = json.decode(_sharedPreferences.getString(resultsPrefName) ?? "[]").map<TestResult>((el) => TestResult.fromJson(el)).toList();

    return data;
  }

  void deleteResult(String id) {
    List<TestResult> data = json.decode(_sharedPreferences.getString(resultsPrefName) ?? "[]").map<TestResult>((el) => TestResult.fromJson(el)).toList();
    data.removeWhere((el) => el.id == id);

    _sharedPreferences.setString(resultsPrefName, json.encode(data));
  }

  bool isExists(String id) {
    List<TestResult> data = json.decode(_sharedPreferences.getString(resultsPrefName) ?? "[]").map<TestResult>((el) => TestResult.fromJson(el)).toList();
    var entity = data.where((el) => el.id == id).firstOrNull;
    return entity != null;
  }

  void addTestResult(TestResult testResult) {
    List<TestResult> data = json.decode(_sharedPreferences.getString(resultsPrefName) ?? "[]").map<TestResult>((el) => TestResult.fromJson(el)).toList();
    if (isExists(testResult.id)) {
      data.removeWhere((el) => el.id == testResult.id);
    }
    data.add(testResult);

    _sharedPreferences.setString(resultsPrefName, json.encode(data));
  }

  void updateTestResult(TestResult testResult) {
    deleteResult(testResult.id);
    List<TestResult> data = json.decode(_sharedPreferences.getString(resultsPrefName) ?? "[]").map<TestResult>((el) => TestResult.fromJson(el)).toList();
    data.add(testResult);

    _sharedPreferences.setString(resultsPrefName, json.encode(data));
  }

  TestResultService(this._sharedPreferences);
}