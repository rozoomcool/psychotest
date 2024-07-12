// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'psychotypes_desc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PsychotypesDesc _$PsychotypesDescFromJson(Map<String, dynamic> json) {
  return _PsychotypesDesc.fromJson(json);
}

/// @nodoc
mixin _$PsychotypesDesc {
  List<PsychotypeDesc> get psychotypes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PsychotypesDescCopyWith<PsychotypesDesc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PsychotypesDescCopyWith<$Res> {
  factory $PsychotypesDescCopyWith(
          PsychotypesDesc value, $Res Function(PsychotypesDesc) then) =
      _$PsychotypesDescCopyWithImpl<$Res, PsychotypesDesc>;
  @useResult
  $Res call({List<PsychotypeDesc> psychotypes});
}

/// @nodoc
class _$PsychotypesDescCopyWithImpl<$Res, $Val extends PsychotypesDesc>
    implements $PsychotypesDescCopyWith<$Res> {
  _$PsychotypesDescCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? psychotypes = null,
  }) {
    return _then(_value.copyWith(
      psychotypes: null == psychotypes
          ? _value.psychotypes
          : psychotypes // ignore: cast_nullable_to_non_nullable
              as List<PsychotypeDesc>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PsychotypesDescImplCopyWith<$Res>
    implements $PsychotypesDescCopyWith<$Res> {
  factory _$$PsychotypesDescImplCopyWith(_$PsychotypesDescImpl value,
          $Res Function(_$PsychotypesDescImpl) then) =
      __$$PsychotypesDescImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PsychotypeDesc> psychotypes});
}

/// @nodoc
class __$$PsychotypesDescImplCopyWithImpl<$Res>
    extends _$PsychotypesDescCopyWithImpl<$Res, _$PsychotypesDescImpl>
    implements _$$PsychotypesDescImplCopyWith<$Res> {
  __$$PsychotypesDescImplCopyWithImpl(
      _$PsychotypesDescImpl _value, $Res Function(_$PsychotypesDescImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? psychotypes = null,
  }) {
    return _then(_$PsychotypesDescImpl(
      psychotypes: null == psychotypes
          ? _value._psychotypes
          : psychotypes // ignore: cast_nullable_to_non_nullable
              as List<PsychotypeDesc>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PsychotypesDescImpl implements _PsychotypesDesc {
  const _$PsychotypesDescImpl({required final List<PsychotypeDesc> psychotypes})
      : _psychotypes = psychotypes;

  factory _$PsychotypesDescImpl.fromJson(Map<String, dynamic> json) =>
      _$$PsychotypesDescImplFromJson(json);

  final List<PsychotypeDesc> _psychotypes;
  @override
  List<PsychotypeDesc> get psychotypes {
    if (_psychotypes is EqualUnmodifiableListView) return _psychotypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_psychotypes);
  }

  @override
  String toString() {
    return 'PsychotypesDesc(psychotypes: $psychotypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PsychotypesDescImpl &&
            const DeepCollectionEquality()
                .equals(other._psychotypes, _psychotypes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_psychotypes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PsychotypesDescImplCopyWith<_$PsychotypesDescImpl> get copyWith =>
      __$$PsychotypesDescImplCopyWithImpl<_$PsychotypesDescImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PsychotypesDescImplToJson(
      this,
    );
  }
}

abstract class _PsychotypesDesc implements PsychotypesDesc {
  const factory _PsychotypesDesc(
          {required final List<PsychotypeDesc> psychotypes}) =
      _$PsychotypesDescImpl;

  factory _PsychotypesDesc.fromJson(Map<String, dynamic> json) =
      _$PsychotypesDescImpl.fromJson;

  @override
  List<PsychotypeDesc> get psychotypes;
  @override
  @JsonKey(ignore: true)
  _$$PsychotypesDescImplCopyWith<_$PsychotypesDescImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
