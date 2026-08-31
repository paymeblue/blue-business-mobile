// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_forgot_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyForgotPasswordRequest _$VerifyForgotPasswordRequestFromJson(
  Map<String, dynamic> json,
) => _VerifyForgotPasswordRequest(
  otp: json['otp'] as String,
  phone: json['phone'] as String,
);

Map<String, dynamic> _$VerifyForgotPasswordRequestToJson(
  _VerifyForgotPasswordRequest instance,
) => <String, dynamic>{'otp': instance.otp, 'phone': instance.phone};
