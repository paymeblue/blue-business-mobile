// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spending_analytics_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpendingAnalyticsData _$SpendingAnalyticsDataFromJson(
  Map<String, dynamic> json,
) => _SpendingAnalyticsData(
  desktopSum: json['desktop_sum'] as String? ?? "0.0",
  mobileSum: json['mobile_sum'] as String? ?? "0.0",
);

Map<String, dynamic> _$SpendingAnalyticsDataToJson(
  _SpendingAnalyticsData instance,
) => <String, dynamic>{
  'desktop_sum': instance.desktopSum,
  'mobile_sum': instance.mobileSum,
};
