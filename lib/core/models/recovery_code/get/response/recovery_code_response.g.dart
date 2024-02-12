// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recovery_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetRecoveryCodeResponseImpl _$$GetRecoveryCodeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetRecoveryCodeResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : GetRecoveryCodeData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetRecoveryCodeResponseImplToJson(
        _$GetRecoveryCodeResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
