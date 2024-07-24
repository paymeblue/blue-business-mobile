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
    _$SendRecoverPinRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('recovery_phone', instance.recoveryPhone);
  val['validation_mode'] = instance.validationMode;
  writeNotNull('security_answer', instance.securityAnswer);
  return val;
}
