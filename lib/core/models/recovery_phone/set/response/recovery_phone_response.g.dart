// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recovery_phone_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SetRecoveryPhoneResponse _$SetRecoveryPhoneResponseFromJson(
  Map<String, dynamic> json,
) => _SetRecoveryPhoneResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
);

Map<String, dynamic> _$SetRecoveryPhoneResponseToJson(
  _SetRecoveryPhoneResponse instance,
) => <String, dynamic>{'status': instance.status, 'message': ?instance.message};
