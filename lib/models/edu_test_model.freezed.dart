// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edu_test_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EduTestModel _$EduTestModelFromJson(Map<String, dynamic> json) {
  return _EduTestModel.fromJson(json);
}

/// @nodoc
mixin _$EduTestModel {
  int get id => throw _privateConstructorUsedError;
  String get phrase => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EduTestModelCopyWith<EduTestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EduTestModelCopyWith<$Res> {
  factory $EduTestModelCopyWith(
          EduTestModel value, $Res Function(EduTestModel) then) =
      _$EduTestModelCopyWithImpl<$Res, EduTestModel>;
  @useResult
  $Res call({int id, String phrase, String desc, String answer});
}

/// @nodoc
class _$EduTestModelCopyWithImpl<$Res, $Val extends EduTestModel>
    implements $EduTestModelCopyWith<$Res> {
  _$EduTestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phrase = null,
    Object? desc = null,
    Object? answer = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      phrase: null == phrase
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EduTestModelImplCopyWith<$Res>
    implements $EduTestModelCopyWith<$Res> {
  factory _$$EduTestModelImplCopyWith(
          _$EduTestModelImpl value, $Res Function(_$EduTestModelImpl) then) =
      __$$EduTestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String phrase, String desc, String answer});
}

/// @nodoc
class __$$EduTestModelImplCopyWithImpl<$Res>
    extends _$EduTestModelCopyWithImpl<$Res, _$EduTestModelImpl>
    implements _$$EduTestModelImplCopyWith<$Res> {
  __$$EduTestModelImplCopyWithImpl(
      _$EduTestModelImpl _value, $Res Function(_$EduTestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phrase = null,
    Object? desc = null,
    Object? answer = null,
  }) {
    return _then(_$EduTestModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      phrase: null == phrase
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EduTestModelImpl implements _EduTestModel {
  const _$EduTestModelImpl(
      {required this.id,
      required this.phrase,
      required this.desc,
      required this.answer});

  factory _$EduTestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EduTestModelImplFromJson(json);

  @override
  final int id;
  @override
  final String phrase;
  @override
  final String desc;
  @override
  final String answer;

  @override
  String toString() {
    return 'EduTestModel(id: $id, phrase: $phrase, desc: $desc, answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EduTestModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phrase, phrase) || other.phrase == phrase) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, phrase, desc, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EduTestModelImplCopyWith<_$EduTestModelImpl> get copyWith =>
      __$$EduTestModelImplCopyWithImpl<_$EduTestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EduTestModelImplToJson(
      this,
    );
  }
}

abstract class _EduTestModel implements EduTestModel {
  const factory _EduTestModel(
      {required final int id,
      required final String phrase,
      required final String desc,
      required final String answer}) = _$EduTestModelImpl;

  factory _EduTestModel.fromJson(Map<String, dynamic> json) =
      _$EduTestModelImpl.fromJson;

  @override
  int get id;
  @override
  String get phrase;
  @override
  String get desc;
  @override
  String get answer;
  @override
  @JsonKey(ignore: true)
  _$$EduTestModelImplCopyWith<_$EduTestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
