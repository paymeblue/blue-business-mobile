// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recovery_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResetRecoveryCodeResponse _$ResetRecoveryCodeResponseFromJson(
  Map<String, dynamic> json,
) => _ResetRecoveryCodeResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ResetRecoveryCodeData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ResetRecoveryCodeResponseToJson(
  _ResetRecoveryCodeResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
