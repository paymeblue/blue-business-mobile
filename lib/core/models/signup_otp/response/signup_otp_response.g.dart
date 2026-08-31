// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignupOtpResponse _$SignupOtpResponseFromJson(Map<String, dynamic> json) =>
    _SignupOtpResponse(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
    );

Map<String, dynamic> _$SignupOtpResponseToJson(_SignupOtpResponse instance) =>
    <String, dynamic>{'status': instance.status, 'message': ?instance.message};
