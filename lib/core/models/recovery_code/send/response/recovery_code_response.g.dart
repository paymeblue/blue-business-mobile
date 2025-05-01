// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recovery_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendRecoveryCodeResponseImpl _$$SendRecoveryCodeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SendRecoveryCodeResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SendRecoveryCodeData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SendRecoveryCodeResponseImplToJson(
        _$SendRecoveryCodeResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
