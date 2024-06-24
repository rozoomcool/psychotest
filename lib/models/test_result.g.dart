// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestResultImpl _$$TestResultImplFromJson(Map<String, dynamic> json) =>
    _$TestResultImpl(
      id: json['id'] as String,
      comment: json['comment'] as String,
      results: (json['results'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      answers: Map<String, String>.from(json['answers'] as Map),
    );

Map<String, dynamic> _$$TestResultImplToJson(_$TestResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'comment': instance.comment,
      'results': instance.results,
      'answers': instance.answers,
    };
