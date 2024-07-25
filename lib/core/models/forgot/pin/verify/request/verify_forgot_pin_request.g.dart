// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_forgot_pin_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyForgotPinRequestImpl _$$VerifyForgotPinRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyForgotPinRequestImpl(
      otp: json['otp'] as String,
      recoveryPhone: json['recovery_phone'] as String,
    );

Map<String, dynamic> _$$VerifyForgotPinRequestImplToJson(
        _$VerifyForgotPinRequestImpl instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'recovery_phone': instance.recoveryPhone,
    };
