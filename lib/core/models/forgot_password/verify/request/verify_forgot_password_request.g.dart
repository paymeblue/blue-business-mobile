// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_forgot_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyForgotPasswordRequestImpl _$$VerifyForgotPasswordRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyForgotPasswordRequestImpl(
      otp: json['otp'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$VerifyForgotPasswordRequestImplToJson(
        _$VerifyForgotPasswordRequestImpl instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'phone': instance.phone,
    };
