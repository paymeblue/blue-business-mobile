import 'package:blue_business/core/models/analytics/data/analytics_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_response.freezed.dart';
part 'analytics_response.g.dart';

@freezed
class AnalyticsResponse with _$AnalyticsResponse {
  const factory AnalyticsResponse({
    @Default("fail") String status,
    String? message,
    AnalyticsData? data,
  }) = _AnalyticsResponse;

  factory AnalyticsResponse.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsResponseImpl.fromJson(json);
}
