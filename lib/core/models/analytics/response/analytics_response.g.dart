// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnalyticsResponse _$AnalyticsResponseFromJson(Map<String, dynamic> json) =>
    _AnalyticsResponse(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : AnalyticsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnalyticsResponseToJson(_AnalyticsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': ?instance.message,
      'data': ?instance.data,
    };
