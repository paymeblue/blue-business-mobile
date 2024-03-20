import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_analytics_response.freezed.dart';
part 'sales_analytics_response.g.dart';

@freezed
class SalesAnalyticsResponse with _$SalesAnalyticsResponse {
  const factory SalesAnalyticsResponse({
    @Default("fail") String status,
    String? message,
    List<Map<String, dynamic>>? data,
  }) = _SalesAnalyticsResponse;

  factory SalesAnalyticsResponse.fromJson(Map<String, dynamic> json) =>
      _$SalesAnalyticsResponseImpl.fromJson(json);
}
