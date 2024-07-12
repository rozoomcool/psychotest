import 'package:freezed_annotation/freezed_annotation.dart';

part 'psychotype_value.freezed.dart';
part 'psychotype_value.g.dart';

@freezed
class PsychotypeValue with _$PsychotypeValue {
  const factory PsychotypeValue({
    required String key,
    required String value
  }) = _PsychotypeValue;

  factory PsychotypeValue.fromJson(Map<String, Object?> json) => _$PsychotypeValueFromJson(json);
}