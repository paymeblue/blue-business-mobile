// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_pay_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PushPayResponse _$PushPayResponseFromJson(Map<String, dynamic> json) =>
    _PushPayResponse(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : PushPayData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PushPayResponseToJson(_PushPayResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': ?instance.message,
      'data': ?instance.data,
    };
