// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_analytics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BranchAnalyticsResponse _$BranchAnalyticsResponseFromJson(
  Map<String, dynamic> json,
) => _BranchAnalyticsResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : BranchAnalyticsData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BranchAnalyticsResponseToJson(
  _BranchAnalyticsResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
