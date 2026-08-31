// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recover_phone_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SendRecoverPinRequest _$SendRecoverPinRequestFromJson(
  Map<String, dynamic> json,
) => _SendRecoverPinRequest(
  recoveryPhone: json['recovery_phone'] as String?,
  validationMode: json['validation_mode'] as String? ?? "recovery-phone",
  securityAnswer: json['security_answer'] as String?,
);

Map<String, dynamic> _$SendRecoverPinRequestToJson(
  _SendRecoverPinRequest instance,
) => <String, dynamic>{
  'recovery_phone': ?instance.recoveryPhone,
  'validation_mode': instance.validationMode,
  'security_answer': ?instance.securityAnswer,
};
