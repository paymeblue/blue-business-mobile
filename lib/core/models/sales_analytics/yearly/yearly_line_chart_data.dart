import 'package:freezed_annotation/freezed_annotation.dart';

part 'yearly_line_chart_data.freezed.dart';
part 'yearly_line_chart_data.g.dart';

@freezed
abstract class YearlyLineChartData with _$YearlyLineChartData {
  const factory YearlyLineChartData({
    required String label,
    required double amount,
  }) = _YearlyLineChartData;

  factory YearlyLineChartData.fromJson(Map<String, dynamic> json) =>
      _$YearlyLineChartDataFromJson(json);
}
