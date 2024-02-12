// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recovery_phone_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetRecoveryPhoneResponseImpl _$$SetRecoveryPhoneResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SetRecoveryPhoneResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$SetRecoveryPhoneResponseImplToJson(
        _$SetRecoveryPhoneResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
