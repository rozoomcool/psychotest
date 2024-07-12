// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'psychotype_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PsychotypeValue _$PsychotypeValueFromJson(Map<String, dynamic> json) {
  return _PsychotypeValue.fromJson(json);
}

/// @nodoc
mixin _$PsychotypeValue {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PsychotypeValueCopyWith<PsychotypeValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PsychotypeValueCopyWith<$Res> {
  factory $PsychotypeValueCopyWith(
          PsychotypeValue value, $Res Function(PsychotypeValue) then) =
      _$PsychotypeValueCopyWithImpl<$Res, PsychotypeValue>;
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class _$PsychotypeValueCopyWithImpl<$Res, $Val extends PsychotypeValue>
    implements $PsychotypeValueCopyWith<$Res> {
  _$PsychotypeValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PsychotypeValueImplCopyWith<$Res>
    implements $PsychotypeValueCopyWith<$Res> {
  factory _$$PsychotypeValueImplCopyWith(_$PsychotypeValueImpl value,
          $Res Function(_$PsychotypeValueImpl) then) =
      __$$PsychotypeValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class __$$PsychotypeValueImplCopyWithImpl<$Res>
    extends _$PsychotypeValueCopyWithImpl<$Res, _$PsychotypeValueImpl>
    implements _$$PsychotypeValueImplCopyWith<$Res> {
  __$$PsychotypeValueImplCopyWithImpl(
      _$PsychotypeValueImpl _value, $Res Function(_$PsychotypeValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$PsychotypeValueImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PsychotypeValueImpl implements _PsychotypeValue {
  const _$PsychotypeValueImpl({required this.key, required this.value});

  factory _$PsychotypeValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$PsychotypeValueImplFromJson(json);

  @override
  final String key;
  @override
  final String value;

  @override
  String toString() {
    return 'PsychotypeValue(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PsychotypeValueImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PsychotypeValueImplCopyWith<_$PsychotypeValueImpl> get copyWith =>
      __$$PsychotypeValueImplCopyWithImpl<_$PsychotypeValueImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PsychotypeValueImplToJson(
      this,
    );
  }
}

abstract class _PsychotypeValue implements PsychotypeValue {
  const factory _PsychotypeValue(
      {required final String key,
      required final String value}) = _$PsychotypeValueImpl;

  factory _PsychotypeValue.fromJson(Map<String, dynamic> json) =
      _$PsychotypeValueImpl.fromJson;

  @override
  String get key;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$PsychotypeValueImplCopyWith<_$PsychotypeValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
