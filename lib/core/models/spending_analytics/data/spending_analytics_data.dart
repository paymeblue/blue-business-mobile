import 'package:freezed_annotation/freezed_annotation.dart';

part 'spending_analytics_data.freezed.dart';
part 'spending_analytics_data.g.dart';

@freezed
class SpendingAnalyticsData with _$SpendingAnalyticsData {
  const factory SpendingAnalyticsData({
    required String desktopSum,
    required String mobileSum,
  }) = _SpendingAnalyticsData;

  factory SpendingAnalyticsData.fromJson(Map<String, dynamic> json) =>
      _$SpendingAnalyticsDataImpl.fromJson(json);
}
