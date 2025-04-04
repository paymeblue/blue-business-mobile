// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recover_phone_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendRecoverPinRequestImpl _$$SendRecoverPinRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SendRecoverPinRequestImpl(
      recoveryPhone: json['recovery_phone'] as String?,
      validationMode: json['validation_mode'] as String? ?? "recovery-phone",
      securityAnswer: json['security_answer'] as String?,
    );

Map<String, dynamic> _$$SendRecoverPinRequestImplToJson(
        _$SendRecoverPinRequestImpl instance) =>
    <String, dynamic>{
      if (instance.recoveryPhone case final value?) 'recovery_phone': value,
      'validation_mode': instance.validationMode,
      if (instance.securityAnswer case final value?) 'security_answer': value,
    };
