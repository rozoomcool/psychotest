import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_result_entity.freezed.dart';
part 'save_result_entity.g.dart';

@freezed
class SaveResultEntity with _$SaveResultEntity {
  const factory SaveResultEntity({
    required Map<String, String> answers,
    required String? title,
    required String? id
  }) = _SaveResultEntity;

  factory SaveResultEntity.fromJson(Map<String, Object?> json)
  => _$SaveResultEntityFromJson(json);
}