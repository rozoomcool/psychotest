// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'psychotype_desc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PsychotypeDesc _$PsychotypeDescFromJson(Map<String, dynamic> json) {
  return _PsychotypeDesc.fromJson(json);
}

/// @nodoc
mixin _$PsychotypeDesc {
  String get psychotype => throw _privateConstructorUsedError;
  PsychotypeValue get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PsychotypeDescCopyWith<PsychotypeDesc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PsychotypeDescCopyWith<$Res> {
  factory $PsychotypeDescCopyWith(
          PsychotypeDesc value, $Res Function(PsychotypeDesc) then) =
      _$PsychotypeDescCopyWithImpl<$Res, PsychotypeDesc>;
  @useResult
  $Res call({String psychotype, PsychotypeValue values});

  $PsychotypeValueCopyWith<$Res> get values;
}

/// @nodoc
class _$PsychotypeDescCopyWithImpl<$Res, $Val extends PsychotypeDesc>
    implements $PsychotypeDescCopyWith<$Res> {
  _$PsychotypeDescCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? psychotype = null,
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      psychotype: null == psychotype
          ? _value.psychotype
          : psychotype // ignore: cast_nullable_to_non_nullable
              as String,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as PsychotypeValue,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PsychotypeValueCopyWith<$Res> get values {
    return $PsychotypeValueCopyWith<$Res>(_value.values, (value) {
      return _then(_value.copyWith(values: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PsychotypeDescImplCopyWith<$Res>
    implements $PsychotypeDescCopyWith<$Res> {
  factory _$$PsychotypeDescImplCopyWith(_$PsychotypeDescImpl value,
          $Res Function(_$PsychotypeDescImpl) then) =
      __$$PsychotypeDescImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String psychotype, PsychotypeValue values});

  @override
  $PsychotypeValueCopyWith<$Res> get values;
}

/// @nodoc
class __$$PsychotypeDescImplCopyWithImpl<$Res>
    extends _$PsychotypeDescCopyWithImpl<$Res, _$PsychotypeDescImpl>
    implements _$$PsychotypeDescImplCopyWith<$Res> {
  __$$PsychotypeDescImplCopyWithImpl(
      _$PsychotypeDescImpl _value, $Res Function(_$PsychotypeDescImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? psychotype = null,
    Object? values = null,
  }) {
    return _then(_$PsychotypeDescImpl(
      psychotype: null == psychotype
          ? _value.psychotype
          : psychotype // ignore: cast_nullable_to_non_nullable
              as String,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as PsychotypeValue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PsychotypeDescImpl implements _PsychotypeDesc {
  const _$PsychotypeDescImpl({required this.psychotype, required this.values});

  factory _$PsychotypeDescImpl.fromJson(Map<String, dynamic> json) =>
      _$$PsychotypeDescImplFromJson(json);

  @override
  final String psychotype;
  @override
  final PsychotypeValue values;

  @override
  String toString() {
    return 'PsychotypeDesc(psychotype: $psychotype, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PsychotypeDescImpl &&
            (identical(other.psychotype, psychotype) ||
                other.psychotype == psychotype) &&
            (identical(other.values, values) || other.values == values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, psychotype, values);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PsychotypeDescImplCopyWith<_$PsychotypeDescImpl> get copyWith =>
      __$$PsychotypeDescImplCopyWithImpl<_$PsychotypeDescImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PsychotypeDescImplToJson(
      this,
    );
  }
}

abstract class _PsychotypeDesc implements PsychotypeDesc {
  const factory _PsychotypeDesc(
      {required final String psychotype,
      required final PsychotypeValue values}) = _$PsychotypeDescImpl;

  factory _PsychotypeDesc.fromJson(Map<String, dynamic> json) =
      _$PsychotypeDescImpl.fromJson;

  @override
  String get psychotype;
  @override
  PsychotypeValue get values;
  @override
  @JsonKey(ignore: true)
  _$$PsychotypeDescImplCopyWith<_$PsychotypeDescImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
