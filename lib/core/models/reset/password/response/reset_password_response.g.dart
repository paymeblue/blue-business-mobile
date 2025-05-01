// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResetPasswordResponseImpl _$$ResetPasswordResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetPasswordResponseImpl(
      status: json['status'] as String? ?? "dail",
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ResetPasswordResponseImplToJson(
        _$ResetPasswordResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
    };
