// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnalyticsData _$AnalyticsDataFromJson(Map<String, dynamic> json) =>
    _AnalyticsData(
      desktop: AnalyticsItem.fromJson(json['desktop'] as Map<String, dynamic>),
      mobile: AnalyticsItem.fromJson(json['mobile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnalyticsDataToJson(_AnalyticsData instance) =>
    <String, dynamic>{'desktop': instance.desktop, 'mobile': instance.mobile};
