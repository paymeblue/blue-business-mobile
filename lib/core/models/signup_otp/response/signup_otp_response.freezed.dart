// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_otp_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignupOtpResponse _$SignupOtpResponseFromJson(Map<String, dynamic> json) {
  return _SignupOtpResponse.fromJson(json);
}

/// @nodoc
mixin _$SignupOtpResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupOtpResponseCopyWith<SignupOtpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupOtpResponseCopyWith<$Res> {
  factory $SignupOtpResponseCopyWith(
          SignupOtpResponse value, $Res Function(SignupOtpResponse) then) =
      _$SignupOtpResponseCopyWithImpl<$Res, SignupOtpResponse>;
  @useResult
  $Res call({String status, String? message});
}

/// @nodoc
class _$SignupOtpResponseCopyWithImpl<$Res, $Val extends SignupOtpResponse>
    implements $SignupOtpResponseCopyWith<$Res> {
  _$SignupOtpResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupOtpResponseImplCopyWith<$Res>
    implements $SignupOtpResponseCopyWith<$Res> {
  factory _$$SignupOtpResponseImplCopyWith(_$SignupOtpResponseImpl value,
          $Res Function(_$SignupOtpResponseImpl) then) =
      __$$SignupOtpResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message});
}

/// @nodoc
class __$$SignupOtpResponseImplCopyWithImpl<$Res>
    extends _$SignupOtpResponseCopyWithImpl<$Res, _$SignupOtpResponseImpl>
    implements _$$SignupOtpResponseImplCopyWith<$Res> {
  __$$SignupOtpResponseImplCopyWithImpl(_$SignupOtpResponseImpl _value,
      $Res Function(_$SignupOtpResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_$SignupOtpResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupOtpResponseImpl implements _SignupOtpResponse {
  const _$SignupOtpResponseImpl({this.status = "fail", this.message});

  factory _$SignupOtpResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupOtpResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'SignupOtpResponse(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupOtpResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupOtpResponseImplCopyWith<_$SignupOtpResponseImpl> get copyWith =>
      __$$SignupOtpResponseImplCopyWithImpl<_$SignupOtpResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupOtpResponseImplToJson(
      this,
    );
  }
}

abstract class _SignupOtpResponse implements SignupOtpResponse {
  const factory _SignupOtpResponse(
      {final String status, final String? message}) = _$SignupOtpResponseImpl;

  factory _SignupOtpResponse.fromJson(Map<String, dynamic> json) =
      _$SignupOtpResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SignupOtpResponseImplCopyWith<_$SignupOtpResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
