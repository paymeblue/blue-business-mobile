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

SendRecoveryCodeResponse _$SendRecoveryCodeResponseFromJson(
    Map<String, dynamic> json) {
  return _SendRecoveryCodeResponse.fromJson(json);
}

/// @nodoc
mixin _$SendRecoveryCodeResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  SendRecoveryCodeData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendRecoveryCodeResponseCopyWith<SendRecoveryCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendRecoveryCodeResponseCopyWith<$Res> {
  factory $SendRecoveryCodeResponseCopyWith(SendRecoveryCodeResponse value,
          $Res Function(SendRecoveryCodeResponse) then) =
      _$SendRecoveryCodeResponseCopyWithImpl<$Res, SendRecoveryCodeResponse>;
  @useResult
  $Res call({bool success, String? message, SendRecoveryCodeData? data});

  $SendRecoveryCodeDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SendRecoveryCodeResponseCopyWithImpl<$Res,
        $Val extends SendRecoveryCodeResponse>
    implements $SendRecoveryCodeResponseCopyWith<$Res> {
  _$SendRecoveryCodeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SendRecoveryCodeData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SendRecoveryCodeDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SendRecoveryCodeDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SendRecoveryCodeResponseImplCopyWith<$Res>
    implements $SendRecoveryCodeResponseCopyWith<$Res> {
  factory _$$SendRecoveryCodeResponseImplCopyWith(
          _$SendRecoveryCodeResponseImpl value,
          $Res Function(_$SendRecoveryCodeResponseImpl) then) =
      __$$SendRecoveryCodeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? message, SendRecoveryCodeData? data});

  @override
  $SendRecoveryCodeDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SendRecoveryCodeResponseImplCopyWithImpl<$Res>
    extends _$SendRecoveryCodeResponseCopyWithImpl<$Res,
        _$SendRecoveryCodeResponseImpl>
    implements _$$SendRecoveryCodeResponseImplCopyWith<$Res> {
  __$$SendRecoveryCodeResponseImplCopyWithImpl(
      _$SendRecoveryCodeResponseImpl _value,
      $Res Function(_$SendRecoveryCodeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SendRecoveryCodeResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SendRecoveryCodeData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendRecoveryCodeResponseImpl implements _SendRecoveryCodeResponse {
  const _$SendRecoveryCodeResponseImpl(
      {this.success = false, this.message, this.data});

  factory _$SendRecoveryCodeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendRecoveryCodeResponseImplFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  final String? message;
  @override
  final SendRecoveryCodeData? data;

  @override
  String toString() {
    return 'SendRecoveryCodeResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendRecoveryCodeResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendRecoveryCodeResponseImplCopyWith<_$SendRecoveryCodeResponseImpl>
      get copyWith => __$$SendRecoveryCodeResponseImplCopyWithImpl<
          _$SendRecoveryCodeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendRecoveryCodeResponseImplToJson(
      this,
    );
  }
}

abstract class _SendRecoveryCodeResponse implements SendRecoveryCodeResponse {
  const factory _SendRecoveryCodeResponse(
      {final bool success,
      final String? message,
      final SendRecoveryCodeData? data}) = _$SendRecoveryCodeResponseImpl;

  factory _SendRecoveryCodeResponse.fromJson(Map<String, dynamic> json) =
      _$SendRecoveryCodeResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  SendRecoveryCodeData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SendRecoveryCodeResponseImplCopyWith<_$SendRecoveryCodeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
