// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recovery_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResetRecoveryCodeResponseImpl _$$ResetRecoveryCodeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetRecoveryCodeResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : GetRecoveryCodeData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResetRecoveryCodeResponseImplToJson(
    _$ResetRecoveryCodeResponseImpl instance) {
  final val = <String, dynamic>{
    'success': instance.success,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data);
  return val;
}
