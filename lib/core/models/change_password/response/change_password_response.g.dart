// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangePasswordResponseImpl _$$ChangePasswordResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePasswordResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ChangePasswordResponseImplToJson(
    _$ChangePasswordResponseImpl instance) {
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
