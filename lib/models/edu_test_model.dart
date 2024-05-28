import 'package:freezed_annotation/freezed_annotation.dart';

part 'edu_test_model.freezed.dart';
part 'edu_test_model.g.dart';

@freezed
class EduTestModel with _$EduTestModel {
  const factory EduTestModel({
    required int id,
    required String phrase,
    required String desc,
    required String answer,
  }) = _EduTestModel;

  factory EduTestModel.fromJson(Map<String, Object?> json) => _$EduTestModelFromJson(json);
}