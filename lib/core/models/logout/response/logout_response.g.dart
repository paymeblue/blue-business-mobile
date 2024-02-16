// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LogoutResponseImpl _$$LogoutResponseImplFromJson(Map<String, dynamic> json) =>
    _$LogoutResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$LogoutResponseImplToJson(
    _$LogoutResponseImpl instance) {
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
