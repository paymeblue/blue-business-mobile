// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_forgot_pin_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyForgotPinRequest _$VerifyForgotPinRequestFromJson(
    Map<String, dynamic> json) {
  return _VerifyForgotPinRequest.fromJson(json);
}

/// @nodoc
mixin _$VerifyForgotPinRequest {
  String get otp => throw _privateConstructorUsedError;
  String get recoveryPhone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyForgotPinRequestCopyWith<VerifyForgotPinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyForgotPinRequestCopyWith<$Res> {
  factory $VerifyForgotPinRequestCopyWith(VerifyForgotPinRequest value,
          $Res Function(VerifyForgotPinRequest) then) =
      _$VerifyForgotPinRequestCopyWithImpl<$Res, VerifyForgotPinRequest>;
  @useResult
  $Res call({String otp, String recoveryPhone});
}

/// @nodoc
class _$VerifyForgotPinRequestCopyWithImpl<$Res,
        $Val extends VerifyForgotPinRequest>
    implements $VerifyForgotPinRequestCopyWith<$Res> {
  _$VerifyForgotPinRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? recoveryPhone = null,
  }) {
    return _then(_value.copyWith(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      recoveryPhone: null == recoveryPhone
          ? _value.recoveryPhone
          : recoveryPhone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyForgotPinRequestImplCopyWith<$Res>
    implements $VerifyForgotPinRequestCopyWith<$Res> {
  factory _$$VerifyForgotPinRequestImplCopyWith(
          _$VerifyForgotPinRequestImpl value,
          $Res Function(_$VerifyForgotPinRequestImpl) then) =
      __$$VerifyForgotPinRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String otp, String recoveryPhone});
}

/// @nodoc
class __$$VerifyForgotPinRequestImplCopyWithImpl<$Res>
    extends _$VerifyForgotPinRequestCopyWithImpl<$Res,
        _$VerifyForgotPinRequestImpl>
    implements _$$VerifyForgotPinRequestImplCopyWith<$Res> {
  __$$VerifyForgotPinRequestImplCopyWithImpl(
      _$VerifyForgotPinRequestImpl _value,
      $Res Function(_$VerifyForgotPinRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? recoveryPhone = null,
  }) {
    return _then(_$VerifyForgotPinRequestImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      recoveryPhone: null == recoveryPhone
          ? _value.recoveryPhone
          : recoveryPhone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyForgotPinRequestImpl implements _VerifyForgotPinRequest {
  const _$VerifyForgotPinRequestImpl(
      {required this.otp, required this.recoveryPhone});

  factory _$VerifyForgotPinRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyForgotPinRequestImplFromJson(json);

  @override
  final String otp;
  @override
  final String recoveryPhone;

  @override
  String toString() {
    return 'VerifyForgotPinRequest(otp: $otp, recoveryPhone: $recoveryPhone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyForgotPinRequestImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.recoveryPhone, recoveryPhone) ||
                other.recoveryPhone == recoveryPhone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, otp, recoveryPhone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyForgotPinRequestImplCopyWith<_$VerifyForgotPinRequestImpl>
      get copyWith => __$$VerifyForgotPinRequestImplCopyWithImpl<
          _$VerifyForgotPinRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyForgotPinRequestImplToJson(
      this,
    );
  }
}

abstract class _VerifyForgotPinRequest implements VerifyForgotPinRequest {
  const factory _VerifyForgotPinRequest(
      {required final String otp,
      required final String recoveryPhone}) = _$VerifyForgotPinRequestImpl;

  factory _VerifyForgotPinRequest.fromJson(Map<String, dynamic> json) =
      _$VerifyForgotPinRequestImpl.fromJson;

  @override
  String get otp;
  @override
  String get recoveryPhone;
  @override
  @JsonKey(ignore: true)
  _$$VerifyForgotPinRequestImplCopyWith<_$VerifyForgotPinRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
