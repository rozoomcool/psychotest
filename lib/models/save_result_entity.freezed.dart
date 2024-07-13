// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaveResultEntity _$SaveResultEntityFromJson(Map<String, dynamic> json) {
  return _SaveResultEntity.fromJson(json);
}

/// @nodoc
mixin _$SaveResultEntity {
  Map<String, String> get answers => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveResultEntityCopyWith<SaveResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveResultEntityCopyWith<$Res> {
  factory $SaveResultEntityCopyWith(
          SaveResultEntity value, $Res Function(SaveResultEntity) then) =
      _$SaveResultEntityCopyWithImpl<$Res, SaveResultEntity>;
  @useResult
  $Res call({Map<String, String> answers, String? title, String? id});
}

/// @nodoc
class _$SaveResultEntityCopyWithImpl<$Res, $Val extends SaveResultEntity>
    implements $SaveResultEntityCopyWith<$Res> {
  _$SaveResultEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answers = null,
    Object? title = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveResultEntityImplCopyWith<$Res>
    implements $SaveResultEntityCopyWith<$Res> {
  factory _$$SaveResultEntityImplCopyWith(_$SaveResultEntityImpl value,
          $Res Function(_$SaveResultEntityImpl) then) =
      __$$SaveResultEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, String> answers, String? title, String? id});
}

/// @nodoc
class __$$SaveResultEntityImplCopyWithImpl<$Res>
    extends _$SaveResultEntityCopyWithImpl<$Res, _$SaveResultEntityImpl>
    implements _$$SaveResultEntityImplCopyWith<$Res> {
  __$$SaveResultEntityImplCopyWithImpl(_$SaveResultEntityImpl _value,
      $Res Function(_$SaveResultEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answers = null,
    Object? title = freezed,
    Object? id = freezed,
  }) {
    return _then(_$SaveResultEntityImpl(
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveResultEntityImpl implements _SaveResultEntity {
  const _$SaveResultEntityImpl(
      {required final Map<String, String> answers,
      required this.title,
      required this.id})
      : _answers = answers;

  factory _$SaveResultEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaveResultEntityImplFromJson(json);

  final Map<String, String> _answers;
  @override
  Map<String, String> get answers {
    if (_answers is EqualUnmodifiableMapView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_answers);
  }

  @override
  final String? title;
  @override
  final String? id;

  @override
  String toString() {
    return 'SaveResultEntity(answers: $answers, title: $title, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveResultEntityImpl &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_answers), title, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveResultEntityImplCopyWith<_$SaveResultEntityImpl> get copyWith =>
      __$$SaveResultEntityImplCopyWithImpl<_$SaveResultEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveResultEntityImplToJson(
      this,
    );
  }
}

abstract class _SaveResultEntity implements SaveResultEntity {
  const factory _SaveResultEntity(
      {required final Map<String, String> answers,
      required final String? title,
      required final String? id}) = _$SaveResultEntityImpl;

  factory _SaveResultEntity.fromJson(Map<String, dynamic> json) =
      _$SaveResultEntityImpl.fromJson;

  @override
  Map<String, String> get answers;
  @override
  String? get title;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$SaveResultEntityImplCopyWith<_$SaveResultEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
