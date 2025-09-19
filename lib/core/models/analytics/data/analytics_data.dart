import 'package:blue_business/core/models/analytics/item/analytics_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_data.freezed.dart';
part 'analytics_data.g.dart';

@freezed
abstract class AnalyticsData with _$AnalyticsData {
  const factory AnalyticsData({
    required AnalyticsItem desktop,
    required AnalyticsItem mobile,
  }) = _AnalyticsData;

  factory AnalyticsData.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsDataFromJson(json);
}
