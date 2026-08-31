// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_analytics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SalesAnalyticsResponse _$SalesAnalyticsResponseFromJson(
  Map<String, dynamic> json,
) => _SalesAnalyticsResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>)
      .toList(),
);

Map<String, dynamic> _$SalesAnalyticsResponseToJson(
  _SalesAnalyticsResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
