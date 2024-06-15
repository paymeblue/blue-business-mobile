// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnalyticsDataImpl _$$AnalyticsDataImplFromJson(Map<String, dynamic> json) =>
    _$AnalyticsDataImpl(
      desktop: AnalyticsItem.fromJson(json['desktop'] as Map<String, dynamic>),
      mobile: AnalyticsItem.fromJson(json['mobile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnalyticsDataImplToJson(_$AnalyticsDataImpl instance) =>
    <String, dynamic>{
      'desktop': instance.desktop,
      'mobile': instance.mobile,
    };
