import 'package:freezed_annotation/freezed_annotation.dart';

part 'spending_analytics_data.freezed.dart';
part 'spending_analytics_data.g.dart';

@freezed
abstract class SpendingAnalyticsData with _$SpendingAnalyticsData {
  const factory SpendingAnalyticsData({
    @Default("0.0") String desktopSum,
    @Default("0.0") String mobileSum,
  }) = _SpendingAnalyticsData;

  factory SpendingAnalyticsData.fromJson(Map<String, dynamic> json) =>
      _$SpendingAnalyticsDataFromJson(json);
}
