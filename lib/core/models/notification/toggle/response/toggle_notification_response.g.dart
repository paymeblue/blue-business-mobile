// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toggle_notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ToggleNotificationResponse _$ToggleNotificationResponseFromJson(
  Map<String, dynamic> json,
) => _ToggleNotificationResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
);

Map<String, dynamic> _$ToggleNotificationResponseToJson(
  _ToggleNotificationResponse instance,
) => <String, dynamic>{'status': instance.status, 'message': ?instance.message};
