import 'package:blue_business/core/models/analytics/item/analytics_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch_analytics_data.freezed.dart';
part 'branch_analytics_data.g.dart';

@freezed
abstract class BranchAnalyticsData with _$BranchAnalyticsData {
  const factory BranchAnalyticsData({required AnalyticsItem transaction}) =
      _BranchAnalyticsData;

  factory BranchAnalyticsData.fromJson(Map<String, dynamic> json) =>
      _$BranchAnalyticsDataFromJson(json);
}
