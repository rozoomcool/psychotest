// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'psychotypes_desc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PsychotypesDescImpl _$$PsychotypesDescImplFromJson(
        Map<String, dynamic> json) =>
    _$PsychotypesDescImpl(
      psychotypes: (json['psychotypes'] as List<dynamic>)
          .map((e) => PsychotypeDesc.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PsychotypesDescImplToJson(
        _$PsychotypesDescImpl instance) =>
    <String, dynamic>{
      'psychotypes': instance.psychotypes,
    };
