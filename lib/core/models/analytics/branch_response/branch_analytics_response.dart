import 'package:blue_business/core/models/analytics/branch_data/branch_analytics_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch_analytics_response.freezed.dart';
part 'branch_analytics_response.g.dart';

@freezed
abstract class BranchAnalyticsResponse with _$BranchAnalyticsResponse {
  const factory BranchAnalyticsResponse({
    @Default("fail") String status,
    String? message,
    BranchAnalyticsData? data,
  }) = _BranchAnalyticsResponse;

  factory BranchAnalyticsResponse.fromJson(Map<String, dynamic> json) =>
      _$BranchAnalyticsResponseFromJson(json);
}
