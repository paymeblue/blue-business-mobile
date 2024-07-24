// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recover_phone_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendRecoverPinRequestImpl _$$SendRecoverPinRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SendRecoverPinRequestImpl(
      phone: json['phone'] as String,
      validationMode: json['validation_mode'] as String? ?? "recovery-phone",
      securityAnswer: json['security_answer'] as String?,
    );

Map<String, dynamic> _$$SendRecoverPinRequestImplToJson(
    _$SendRecoverPinRequestImpl instance) {
  final val = <String, dynamic>{
    'phone': instance.phone,
    'validation_mode': instance.validationMode,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('security_answer', instance.securityAnswer);
  return val;
}
