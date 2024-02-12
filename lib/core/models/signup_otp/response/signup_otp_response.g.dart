// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupOtpResponseImpl _$$SignupOtpResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SignupOtpResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$SignupOtpResponseImplToJson(
        _$SignupOtpResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
