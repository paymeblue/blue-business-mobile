import 'package:blue_business/core/models/spending_analytics/data/spending_analytics_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'spending_analytics_response.freezed.dart';
part 'spending_analytics_response.g.dart';

@freezed
class SpendingAnalyticsResponse with _$SpendingAnalyticsResponse {
  const factory SpendingAnalyticsResponse({
    @Default("fail") String status,
    String? message,
    SpendingAnalyticsData? data,
  }) = _SpendingAnalyticsResponse;

  factory SpendingAnalyticsResponse.fromJson(Map<String, dynamic> json) =>
      _$SpendingAnalyticsResponseImpl.fromJson(json);
}
