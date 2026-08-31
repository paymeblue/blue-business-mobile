// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recovery_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SendRecoveryCodeResponse _$SendRecoveryCodeResponseFromJson(
  Map<String, dynamic> json,
) => _SendRecoveryCodeResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : SendRecoveryCodeData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SendRecoveryCodeResponseToJson(
  _SendRecoveryCodeResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
