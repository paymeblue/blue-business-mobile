// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_pin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForgotPinResponse _$ForgotPinResponseFromJson(Map<String, dynamic> json) =>
    _ForgotPinResponse(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ForgotPinData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ForgotPinResponseToJson(_ForgotPinResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': ?instance.message,
      'data': ?instance.data,
    };
