import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_line_chart_data.freezed.dart';
part 'monthly_line_chart_data.g.dart';

@freezed
class MonthlyLineChartData with _$MonthlyLineChartData {
  const factory MonthlyLineChartData({
    required String label,
    required double amount,
  }) = _MonthlyLineChartData;

  factory MonthlyLineChartData.fromJson(Map<String, dynamic> json) =>
      _$MonthlyLineChartDataImpl.fromJson(json);
}
