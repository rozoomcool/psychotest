// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TestResult _$TestResultFromJson(Map<String, dynamic> json) {
  return _TestResult.fromJson(json);
}

/// @nodoc
mixin _$TestResult {
  String get id => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  Map<String, double> get results => throw _privateConstructorUsedError;
  Map<String, String> get answers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestResultCopyWith<TestResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestResultCopyWith<$Res> {
  factory $TestResultCopyWith(
          TestResult value, $Res Function(TestResult) then) =
      _$TestResultCopyWithImpl<$Res, TestResult>;
  @useResult
  $Res call(
      {String id,
      String comment,
      Map<String, double> results,
      Map<String, String> answers});
}

/// @nodoc
class _$TestResultCopyWithImpl<$Res, $Val extends TestResult>
    implements $TestResultCopyWith<$Res> {
  _$TestResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? comment = null,
    Object? results = null,
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestResultImplCopyWith<$Res>
    implements $TestResultCopyWith<$Res> {
  factory _$$TestResultImplCopyWith(
          _$TestResultImpl value, $Res Function(_$TestResultImpl) then) =
      __$$TestResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String comment,
      Map<String, double> results,
      Map<String, String> answers});
}

/// @nodoc
class __$$TestResultImplCopyWithImpl<$Res>
    extends _$TestResultCopyWithImpl<$Res, _$TestResultImpl>
    implements _$$TestResultImplCopyWith<$Res> {
  __$$TestResultImplCopyWithImpl(
      _$TestResultImpl _value, $Res Function(_$TestResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? comment = null,
    Object? results = null,
    Object? answers = null,
  }) {
    return _then(_$TestResultImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestResultImpl implements _TestResult {
  const _$TestResultImpl(
      {required this.id,
      required this.comment,
      required final Map<String, double> results,
      required final Map<String, String> answers})
      : _results = results,
        _answers = answers;

  factory _$TestResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestResultImplFromJson(json);

  @override
  final String id;
  @override
  final String comment;
  final Map<String, double> _results;
  @override
  Map<String, double> get results {
    if (_results is EqualUnmodifiableMapView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_results);
  }

  final Map<String, String> _answers;
  @override
  Map<String, String> get answers {
    if (_answers is EqualUnmodifiableMapView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_answers);
  }

  @override
  String toString() {
    return 'TestResult(id: $id, comment: $comment, results: $results, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      comment,
      const DeepCollectionEquality().hash(_results),
      const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestResultImplCopyWith<_$TestResultImpl> get copyWith =>
      __$$TestResultImplCopyWithImpl<_$TestResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestResultImplToJson(
      this,
    );
  }
}

abstract class _TestResult implements TestResult {
  const factory _TestResult(
      {required final String id,
      required final String comment,
      required final Map<String, double> results,
      required final Map<String, String> answers}) = _$TestResultImpl;

  factory _TestResult.fromJson(Map<String, dynamic> json) =
      _$TestResultImpl.fromJson;

  @override
  String get id;
  @override
  String get comment;
  @override
  Map<String, double> get results;
  @override
  Map<String, String> get answers;
  @override
  @JsonKey(ignore: true)
  _$$TestResultImplCopyWith<_$TestResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
