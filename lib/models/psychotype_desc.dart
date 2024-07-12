import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:psyhotest/models/psychotype_value.dart';

part 'psychotype_desc.freezed.dart';
part 'psychotype_desc.g.dart';

@freezed
class PsychotypeDesc with _$PsychotypeDesc {
  const factory PsychotypeDesc({
    required String psychotype,
    required PsychotypeValue values
  }) = _PsychotypeDesc;

  factory PsychotypeDesc.fromJson(Map<String, Object?> json) => _$PsychotypeDescFromJson(json);
}