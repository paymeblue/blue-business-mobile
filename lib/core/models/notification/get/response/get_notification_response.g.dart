// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetNotificationResponse _$GetNotificationResponseFromJson(
  Map<String, dynamic> json,
) => _GetNotificationResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : GetNotificationData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetNotificationResponseToJson(
  _GetNotificationResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
