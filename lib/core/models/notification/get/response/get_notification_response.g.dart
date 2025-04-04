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
        _$GetNotificationResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
