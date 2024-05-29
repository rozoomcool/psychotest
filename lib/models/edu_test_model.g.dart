// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edu_test_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EduTestModelImpl _$$EduTestModelImplFromJson(Map<String, dynamic> json) =>
    _$EduTestModelImpl(
      id: (json['id'] as num).toInt(),
      phrase: json['phrase'] as String,
      desc: json['desc'] as String,
      answer: json['answer'] as String,
    );

Map<String, dynamic> _$$EduTestModelImplToJson(_$EduTestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phrase': instance.phrase,
      'desc': instance.desc,
      'answer': instance.answer,
    };
