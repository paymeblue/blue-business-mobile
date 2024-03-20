import 'package:freezed_annotation/freezed_annotation.dart';

part 'weekly_line_chart_data.freezed.dart';
part 'weekly_line_chart_data.g.dart';

@freezed
class WeeklyLineChartData with _$WeeklyLineChartData {
  const factory WeeklyLineChartData({
    required String label,
    required double amount,
    String? date,
  }) = _WeeklyLineChartData;

  factory WeeklyLineChartData.fromJson(Map<String, dynamic> json) =>
      _$WeeklyLineChartDataImpl.fromJson(json);
}
