// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spending_analytics_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpendingAnalyticsDataImpl _$$SpendingAnalyticsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SpendingAnalyticsDataImpl(
      desktopSum: json['desktop_sum'] as String? ?? "0.0",
      mobileSum: json['mobile_sum'] as String? ?? "0.0",
    );

Map<String, dynamic> _$$SpendingAnalyticsDataImplToJson(
        _$SpendingAnalyticsDataImpl instance) =>
    <String, dynamic>{
      'desktop_sum': instance.desktopSum,
      'mobile_sum': instance.mobileSum,
    };
