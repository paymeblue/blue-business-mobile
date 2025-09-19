// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recovery_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetRecoveryCodeResponse _$GetRecoveryCodeResponseFromJson(
  Map<String, dynamic> json,
) => _GetRecoveryCodeResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : GetRecoveryCodeData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetRecoveryCodeResponseToJson(
  _GetRecoveryCodeResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
