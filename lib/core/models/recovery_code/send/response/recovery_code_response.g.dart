// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recovery_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendRecoveryCodeResponseImpl _$$SendRecoveryCodeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SendRecoveryCodeResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SendRecoveryCodeData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SendRecoveryCodeResponseImplToJson(
    _$SendRecoveryCodeResponseImpl instance) {
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
