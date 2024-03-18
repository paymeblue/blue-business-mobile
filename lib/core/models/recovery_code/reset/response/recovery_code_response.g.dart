// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recovery_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResetRecoveryCodeResponseImpl _$$ResetRecoveryCodeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetRecoveryCodeResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ResetRecoveryCodeData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResetRecoveryCodeResponseImplToJson(
    _$ResetRecoveryCodeResponseImpl instance) {
  final val = <String, dynamic>{
    'status': instance.status,
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
