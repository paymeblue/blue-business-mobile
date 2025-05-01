// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnalyticsResponseImpl _$$AnalyticsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AnalyticsResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : AnalyticsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnalyticsResponseImplToJson(
        _$AnalyticsResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
