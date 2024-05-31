import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_result.freezed.dart';
part 'test_result.g.dart';

@freezed
class TestResult with _$TestResult {
  const factory TestResult({
    required String id,
    required String comment,
    required Map<String, double> results
}) = _TestResult;

  factory TestResult.fromJson(Map<String, Object?> json) => _$TestResultFromJson(json);
}