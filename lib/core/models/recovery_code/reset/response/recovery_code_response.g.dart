// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recovery_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResetRecoveryCodeResponseImpl _$$ResetRecoveryCodeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetRecoveryCodeResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : GetRecoveryCodeData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResetRecoveryCodeResponseImplToJson(
        _$ResetRecoveryCodeResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
