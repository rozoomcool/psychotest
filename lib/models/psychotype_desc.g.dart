// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'psychotype_desc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PsychotypeDescImpl _$$PsychotypeDescImplFromJson(Map<String, dynamic> json) =>
    _$PsychotypeDescImpl(
      psychotype: json['psychotype'] as String,
      values: (json['values'] as List<dynamic>)
          .map((e) => PsychotypeValue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PsychotypeDescImplToJson(
        _$PsychotypeDescImpl instance) =>
    <String, dynamic>{
      'psychotype': instance.psychotype,
      'values': instance.values,
    };
