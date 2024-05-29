import 'package:freezed_annotation/freezed_annotation.dart';

part 'edu_test_photo_model.freezed.dart';
part 'edu_test_photo_model.g.dart';

@freezed
class EduTestPhotoModel with _$EduTestPhotoModel {
  const factory EduTestPhotoModel({
    required int id,
    required String desc,
    required String answer,
  }) = _EduTestPhotoModel;

  factory EduTestPhotoModel.fromJson(Map<String, Object?> json) => _$EduTestPhotoModelFromJson(json);
}