import 'package:freezed_annotation/freezed_annotation.dart';

part 'line_chart_data.freezed.dart';
part 'line_chart_data.g.dart';

@freezed
abstract class LineInputData with _$LineInputData {
  const factory LineInputData({required String label, required double amount}) =
      _LineInputData;

  factory LineInputData.fromJson(Map<String, dynamic> json) =>
      _$LineInputDataFromJson(json);
}
