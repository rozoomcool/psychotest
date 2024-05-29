// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edu_test_photo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EduTestPhotoModel _$EduTestPhotoModelFromJson(Map<String, dynamic> json) {
  return _EduTestPhotoModel.fromJson(json);
}

/// @nodoc
mixin _$EduTestPhotoModel {
  int get id => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EduTestPhotoModelCopyWith<EduTestPhotoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EduTestPhotoModelCopyWith<$Res> {
  factory $EduTestPhotoModelCopyWith(
          EduTestPhotoModel value, $Res Function(EduTestPhotoModel) then) =
      _$EduTestPhotoModelCopyWithImpl<$Res, EduTestPhotoModel>;
  @useResult
  $Res call({int id, String desc, String answer});
}

/// @nodoc
class _$EduTestPhotoModelCopyWithImpl<$Res, $Val extends EduTestPhotoModel>
    implements $EduTestPhotoModelCopyWith<$Res> {
  _$EduTestPhotoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? desc = null,
    Object? answer = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$EduTestPhotoModelImplCopyWith<$Res>
    implements $EduTestPhotoModelCopyWith<$Res> {
  factory _$$EduTestPhotoModelImplCopyWith(_$EduTestPhotoModelImpl value,
          $Res Function(_$EduTestPhotoModelImpl) then) =
      __$$EduTestPhotoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String desc, String answer});
}

/// @nodoc
class __$$EduTestPhotoModelImplCopyWithImpl<$Res>
    extends _$EduTestPhotoModelCopyWithImpl<$Res, _$EduTestPhotoModelImpl>
    implements _$$EduTestPhotoModelImplCopyWith<$Res> {
  __$$EduTestPhotoModelImplCopyWithImpl(_$EduTestPhotoModelImpl _value,
      $Res Function(_$EduTestPhotoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? desc = null,
    Object? answer = null,
  }) {
    return _then(_$EduTestPhotoModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$EduTestPhotoModelImpl implements _EduTestPhotoModel {
  const _$EduTestPhotoModelImpl(
      {required this.id, required this.desc, required this.answer});

  factory _$EduTestPhotoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EduTestPhotoModelImplFromJson(json);

  @override
  final int id;
  @override
  final String desc;
  @override
  final String answer;

  @override
  String toString() {
    return 'EduTestPhotoModel(id: $id, desc: $desc, answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EduTestPhotoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, desc, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EduTestPhotoModelImplCopyWith<_$EduTestPhotoModelImpl> get copyWith =>
      __$$EduTestPhotoModelImplCopyWithImpl<_$EduTestPhotoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EduTestPhotoModelImplToJson(
      this,
    );
  }
}

abstract class _EduTestPhotoModel implements EduTestPhotoModel {
  const factory _EduTestPhotoModel(
      {required final int id,
      required final String desc,
      required final String answer}) = _$EduTestPhotoModelImpl;

  factory _EduTestPhotoModel.fromJson(Map<String, dynamic> json) =
      _$EduTestPhotoModelImpl.fromJson;

  @override
  int get id;
  @override
  String get desc;
  @override
  String get answer;
  @override
  @JsonKey(ignore: true)
  _$$EduTestPhotoModelImplCopyWith<_$EduTestPhotoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
