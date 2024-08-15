// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetNotificationResponseImpl _$$GetNotificationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetNotificationResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : GetNotificationData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetNotificationResponseImplToJson(
    _$GetNotificationResponseImpl instance) {
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
