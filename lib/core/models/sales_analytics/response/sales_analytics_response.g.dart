// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_analytics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalesAnalyticsResponseImpl _$$SalesAnalyticsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SalesAnalyticsResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$SalesAnalyticsResponseImplToJson(
        _$SalesAnalyticsResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
