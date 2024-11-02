// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recovery_code_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResetRecoveryCodeResponse _$ResetRecoveryCodeResponseFromJson(
    Map<String, dynamic> json) {
  return _ResetRecoveryCodeResponse.fromJson(json);
}

/// @nodoc
mixin _$ResetRecoveryCodeResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ResetRecoveryCodeData? get data => throw _privateConstructorUsedError;

  /// Serializes this ResetRecoveryCodeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResetRecoveryCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResetRecoveryCodeResponseCopyWith<ResetRecoveryCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetRecoveryCodeResponseCopyWith<$Res> {
  factory $ResetRecoveryCodeResponseCopyWith(ResetRecoveryCodeResponse value,
          $Res Function(ResetRecoveryCodeResponse) then) =
      _$ResetRecoveryCodeResponseCopyWithImpl<$Res, ResetRecoveryCodeResponse>;
  @useResult
  $Res call({String status, String? message, ResetRecoveryCodeData? data});

  $ResetRecoveryCodeDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResetRecoveryCodeResponseCopyWithImpl<$Res,
        $Val extends ResetRecoveryCodeResponse>
    implements $ResetRecoveryCodeResponseCopyWith<$Res> {
  _$ResetRecoveryCodeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResetRecoveryCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ResetRecoveryCodeData?,
    ) as $Val);
  }

  /// Create a copy of ResetRecoveryCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResetRecoveryCodeDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ResetRecoveryCodeDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResetRecoveryCodeResponseImplCopyWith<$Res>
    implements $ResetRecoveryCodeResponseCopyWith<$Res> {
  factory _$$ResetRecoveryCodeResponseImplCopyWith(
          _$ResetRecoveryCodeResponseImpl value,
          $Res Function(_$ResetRecoveryCodeResponseImpl) then) =
      __$$ResetRecoveryCodeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, ResetRecoveryCodeData? data});

  @override
  $ResetRecoveryCodeDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ResetRecoveryCodeResponseImplCopyWithImpl<$Res>
    extends _$ResetRecoveryCodeResponseCopyWithImpl<$Res,
        _$ResetRecoveryCodeResponseImpl>
    implements _$$ResetRecoveryCodeResponseImplCopyWith<$Res> {
  __$$ResetRecoveryCodeResponseImplCopyWithImpl(
      _$ResetRecoveryCodeResponseImpl _value,
      $Res Function(_$ResetRecoveryCodeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResetRecoveryCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResetRecoveryCodeResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ResetRecoveryCodeData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResetRecoveryCodeResponseImpl implements _ResetRecoveryCodeResponse {
  const _$ResetRecoveryCodeResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$ResetRecoveryCodeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResetRecoveryCodeResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final ResetRecoveryCodeData? data;

  @override
  String toString() {
    return 'ResetRecoveryCodeResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetRecoveryCodeResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of ResetRecoveryCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetRecoveryCodeResponseImplCopyWith<_$ResetRecoveryCodeResponseImpl>
      get copyWith => __$$ResetRecoveryCodeResponseImplCopyWithImpl<
          _$ResetRecoveryCodeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetRecoveryCodeResponseImplToJson(
      this,
    );
  }
}

abstract class _ResetRecoveryCodeResponse implements ResetRecoveryCodeResponse {
  const factory _ResetRecoveryCodeResponse(
      {final String status,
      final String? message,
      final ResetRecoveryCodeData? data}) = _$ResetRecoveryCodeResponseImpl;

  factory _ResetRecoveryCodeResponse.fromJson(Map<String, dynamic> json) =
      _$ResetRecoveryCodeResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  ResetRecoveryCodeData? get data;

  /// Create a copy of ResetRecoveryCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetRecoveryCodeResponseImplCopyWith<_$ResetRecoveryCodeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
