// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recovery_phone_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetRecoveryPhoneResponseImpl _$$SetRecoveryPhoneResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SetRecoveryPhoneResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$SetRecoveryPhoneResponseImplToJson(
    _$SetRecoveryPhoneResponseImpl instance) {
  final val = <String, dynamic>{
    'success': instance.success,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  return val;
}
