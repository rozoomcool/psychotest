// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edu_test_photo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EduTestPhotoModelImpl _$$EduTestPhotoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EduTestPhotoModelImpl(
      id: (json['id'] as num).toInt(),
      desc: json['desc'] as String,
      answer: json['answer'] as String,
    );

Map<String, dynamic> _$$EduTestPhotoModelImplToJson(
        _$EduTestPhotoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'desc': instance.desc,
      'answer': instance.answer,
    };
