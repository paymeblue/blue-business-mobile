// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_forgot_password_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyForgotPasswordRequest _$VerifyForgotPasswordRequestFromJson(
    Map<String, dynamic> json) {
  return _VerifyForgotPasswordRequest.fromJson(json);
}

/// @nodoc
mixin _$VerifyForgotPasswordRequest {
  String get otp => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyForgotPasswordRequestCopyWith<VerifyForgotPasswordRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyForgotPasswordRequestCopyWith<$Res> {
  factory $VerifyForgotPasswordRequestCopyWith(
          VerifyForgotPasswordRequest value,
          $Res Function(VerifyForgotPasswordRequest) then) =
      _$VerifyForgotPasswordRequestCopyWithImpl<$Res,
          VerifyForgotPasswordRequest>;
  @useResult
  $Res call({String otp, String phone});
}

/// @nodoc
class _$VerifyForgotPasswordRequestCopyWithImpl<$Res,
        $Val extends VerifyForgotPasswordRequest>
    implements $VerifyForgotPasswordRequestCopyWith<$Res> {
  _$VerifyForgotPasswordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyForgotPasswordRequestImplCopyWith<$Res>
    implements $VerifyForgotPasswordRequestCopyWith<$Res> {
  factory _$$VerifyForgotPasswordRequestImplCopyWith(
          _$VerifyForgotPasswordRequestImpl value,
          $Res Function(_$VerifyForgotPasswordRequestImpl) then) =
      __$$VerifyForgotPasswordRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String otp, String phone});
}

/// @nodoc
class __$$VerifyForgotPasswordRequestImplCopyWithImpl<$Res>
    extends _$VerifyForgotPasswordRequestCopyWithImpl<$Res,
        _$VerifyForgotPasswordRequestImpl>
    implements _$$VerifyForgotPasswordRequestImplCopyWith<$Res> {
  __$$VerifyForgotPasswordRequestImplCopyWithImpl(
      _$VerifyForgotPasswordRequestImpl _value,
      $Res Function(_$VerifyForgotPasswordRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? phone = null,
  }) {
    return _then(_$VerifyForgotPasswordRequestImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyForgotPasswordRequestImpl
    implements _VerifyForgotPasswordRequest {
  const _$VerifyForgotPasswordRequestImpl(
      {required this.otp, required this.phone});

  factory _$VerifyForgotPasswordRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VerifyForgotPasswordRequestImplFromJson(json);

  @override
  final String otp;
  @override
  final String phone;

  @override
  String toString() {
    return 'VerifyForgotPasswordRequest(otp: $otp, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyForgotPasswordRequestImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, otp, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyForgotPasswordRequestImplCopyWith<_$VerifyForgotPasswordRequestImpl>
      get copyWith => __$$VerifyForgotPasswordRequestImplCopyWithImpl<
          _$VerifyForgotPasswordRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyForgotPasswordRequestImplToJson(
      this,
    );
  }
}

abstract class _VerifyForgotPasswordRequest
    implements VerifyForgotPasswordRequest {
  const factory _VerifyForgotPasswordRequest(
      {required final String otp,
      required final String phone}) = _$VerifyForgotPasswordRequestImpl;

  factory _VerifyForgotPasswordRequest.fromJson(Map<String, dynamic> json) =
      _$VerifyForgotPasswordRequestImpl.fromJson;

  @override
  String get otp;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$VerifyForgotPasswordRequestImplCopyWith<_$VerifyForgotPasswordRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
