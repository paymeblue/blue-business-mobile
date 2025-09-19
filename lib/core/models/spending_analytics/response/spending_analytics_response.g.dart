// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spending_analytics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpendingAnalyticsResponse _$SpendingAnalyticsResponseFromJson(
  Map<String, dynamic> json,
) => _SpendingAnalyticsResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : SpendingAnalyticsData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SpendingAnalyticsResponseToJson(
  _SpendingAnalyticsResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
