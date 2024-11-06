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

ResetRecoveryCodeData _$ResetRecoveryCodeDataFromJson(
    Map<String, dynamic> json) {
  return _ResetRecoveryCodeData.fromJson(json);
}

/// @nodoc
mixin _$ResetRecoveryCodeData {
  String get recoveryCode => throw _privateConstructorUsedError;

  /// Serializes this ResetRecoveryCodeData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResetRecoveryCodeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResetRecoveryCodeDataCopyWith<ResetRecoveryCodeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetRecoveryCodeDataCopyWith<$Res> {
  factory $ResetRecoveryCodeDataCopyWith(ResetRecoveryCodeData value,
          $Res Function(ResetRecoveryCodeData) then) =
      _$ResetRecoveryCodeDataCopyWithImpl<$Res, ResetRecoveryCodeData>;
  @useResult
  $Res call({String recoveryCode});
}

/// @nodoc
class _$ResetRecoveryCodeDataCopyWithImpl<$Res,
        $Val extends ResetRecoveryCodeData>
    implements $ResetRecoveryCodeDataCopyWith<$Res> {
  _$ResetRecoveryCodeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResetRecoveryCodeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recoveryCode = null,
  }) {
    return _then(_value.copyWith(
      recoveryCode: null == recoveryCode
          ? _value.recoveryCode
          : recoveryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetRecoveryCodeDataImplCopyWith<$Res>
    implements $ResetRecoveryCodeDataCopyWith<$Res> {
  factory _$$ResetRecoveryCodeDataImplCopyWith(
          _$ResetRecoveryCodeDataImpl value,
          $Res Function(_$ResetRecoveryCodeDataImpl) then) =
      __$$ResetRecoveryCodeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String recoveryCode});
}

/// @nodoc
class __$$ResetRecoveryCodeDataImplCopyWithImpl<$Res>
    extends _$ResetRecoveryCodeDataCopyWithImpl<$Res,
        _$ResetRecoveryCodeDataImpl>
    implements _$$ResetRecoveryCodeDataImplCopyWith<$Res> {
  __$$ResetRecoveryCodeDataImplCopyWithImpl(_$ResetRecoveryCodeDataImpl _value,
      $Res Function(_$ResetRecoveryCodeDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResetRecoveryCodeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recoveryCode = null,
  }) {
    return _then(_$ResetRecoveryCodeDataImpl(
      recoveryCode: null == recoveryCode
          ? _value.recoveryCode
          : recoveryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResetRecoveryCodeDataImpl implements _ResetRecoveryCodeData {
  const _$ResetRecoveryCodeDataImpl({required this.recoveryCode});

  factory _$ResetRecoveryCodeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResetRecoveryCodeDataImplFromJson(json);

  @override
  final String recoveryCode;

  @override
  String toString() {
    return 'ResetRecoveryCodeData(recoveryCode: $recoveryCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetRecoveryCodeDataImpl &&
            (identical(other.recoveryCode, recoveryCode) ||
                other.recoveryCode == recoveryCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, recoveryCode);

  /// Create a copy of ResetRecoveryCodeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetRecoveryCodeDataImplCopyWith<_$ResetRecoveryCodeDataImpl>
      get copyWith => __$$ResetRecoveryCodeDataImplCopyWithImpl<
          _$ResetRecoveryCodeDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetRecoveryCodeDataImplToJson(
      this,
    );
  }
}

abstract class _ResetRecoveryCodeData implements ResetRecoveryCodeData {
  const factory _ResetRecoveryCodeData({required final String recoveryCode}) =
      _$ResetRecoveryCodeDataImpl;

  factory _ResetRecoveryCodeData.fromJson(Map<String, dynamic> json) =
      _$ResetRecoveryCodeDataImpl.fromJson;

  @override
  String get recoveryCode;

  /// Create a copy of ResetRecoveryCodeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetRecoveryCodeDataImplCopyWith<_$ResetRecoveryCodeDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
