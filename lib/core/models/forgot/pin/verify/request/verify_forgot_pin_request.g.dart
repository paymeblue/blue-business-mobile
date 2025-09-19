// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_forgot_pin_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyForgotPinRequest _$VerifyForgotPinRequestFromJson(
  Map<String, dynamic> json,
) => _VerifyForgotPinRequest(
  otp: json['otp'] as String,
  recoveryPhone: json['recovery_phone'] as String,
);

Map<String, dynamic> _$VerifyForgotPinRequestToJson(
  _VerifyForgotPinRequest instance,
) => <String, dynamic>{
  'otp': instance.otp,
  'recovery_phone': instance.recoveryPhone,
};
