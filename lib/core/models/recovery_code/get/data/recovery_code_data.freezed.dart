// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recovery_code_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetRecoveryCodeData _$GetRecoveryCodeDataFromJson(Map<String, dynamic> json) {
  return _GetRecoveryCodeData.fromJson(json);
}

/// @nodoc
mixin _$GetRecoveryCodeData {
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetRecoveryCodeDataCopyWith<GetRecoveryCodeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRecoveryCodeDataCopyWith<$Res> {
  factory $GetRecoveryCodeDataCopyWith(
          GetRecoveryCodeData value, $Res Function(GetRecoveryCodeData) then) =
      _$GetRecoveryCodeDataCopyWithImpl<$Res, GetRecoveryCodeData>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class _$GetRecoveryCodeDataCopyWithImpl<$Res, $Val extends GetRecoveryCodeData>
    implements $GetRecoveryCodeDataCopyWith<$Res> {
  _$GetRecoveryCodeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRecoveryCodeDataImplCopyWith<$Res>
    implements $GetRecoveryCodeDataCopyWith<$Res> {
  factory _$$GetRecoveryCodeDataImplCopyWith(_$GetRecoveryCodeDataImpl value,
          $Res Function(_$GetRecoveryCodeDataImpl) then) =
      __$$GetRecoveryCodeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$GetRecoveryCodeDataImplCopyWithImpl<$Res>
    extends _$GetRecoveryCodeDataCopyWithImpl<$Res, _$GetRecoveryCodeDataImpl>
    implements _$$GetRecoveryCodeDataImplCopyWith<$Res> {
  __$$GetRecoveryCodeDataImplCopyWithImpl(_$GetRecoveryCodeDataImpl _value,
      $Res Function(_$GetRecoveryCodeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$GetRecoveryCodeDataImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetRecoveryCodeDataImpl implements _GetRecoveryCodeData {
  const _$GetRecoveryCodeDataImpl({required this.code});

  factory _$GetRecoveryCodeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetRecoveryCodeDataImplFromJson(json);

  @override
  final String code;

  @override
  String toString() {
    return 'GetRecoveryCodeData(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRecoveryCodeDataImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRecoveryCodeDataImplCopyWith<_$GetRecoveryCodeDataImpl> get copyWith =>
      __$$GetRecoveryCodeDataImplCopyWithImpl<_$GetRecoveryCodeDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetRecoveryCodeDataImplToJson(
      this,
    );
  }
}

abstract class _GetRecoveryCodeData implements GetRecoveryCodeData {
  const factory _GetRecoveryCodeData({required final String code}) =
      _$GetRecoveryCodeDataImpl;

  factory _GetRecoveryCodeData.fromJson(Map<String, dynamic> json) =
      _$GetRecoveryCodeDataImpl.fromJson;

  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$GetRecoveryCodeDataImplCopyWith<_$GetRecoveryCodeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
