// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toggle_notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToggleNotificationResponseImpl _$$ToggleNotificationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ToggleNotificationResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ToggleNotificationResponseImplToJson(
    _$ToggleNotificationResponseImpl instance) {
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
