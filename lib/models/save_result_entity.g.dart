// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_result_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveResultEntityImpl _$$SaveResultEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SaveResultEntityImpl(
      answers: Map<String, String>.from(json['answers'] as Map),
      title: json['title'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$SaveResultEntityImplToJson(
        _$SaveResultEntityImpl instance) =>
    <String, dynamic>{
      'answers': instance.answers,
      'title': instance.title,
      'id': instance.id,
    };
