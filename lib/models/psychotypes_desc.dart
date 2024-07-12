import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:psyhotest/models/psychotype_desc.dart';
import 'package:psyhotest/models/psychotype_value.dart';

part 'psychotypes_desc.freezed.dart';
part 'psychotypes_desc.g.dart';

@freezed
class PsychotypesDesc with _$PsychotypesDesc {
  const factory PsychotypesDesc({
    required List<PsychotypeDesc> psychotypes,
  }) = _PsychotypesDesc;

  factory PsychotypesDesc.fromJson(Map<String, Object?> json) => _$PsychotypesDescFromJson(json);
}