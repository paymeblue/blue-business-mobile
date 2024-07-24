// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResetPasswordResponseImpl _$$ResetPasswordResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetPasswordResponseImpl(
      status: json['status'] as String? ?? "dail",
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ResetPasswordResponseImplToJson(
    _$ResetPasswordResponseImpl instance) {
  final val = <String, dynamic>{
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  return val;
}
