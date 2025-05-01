// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spending_analytics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpendingAnalyticsResponseImpl _$$SpendingAnalyticsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SpendingAnalyticsResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SpendingAnalyticsData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpendingAnalyticsResponseImplToJson(
        _$SpendingAnalyticsResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
