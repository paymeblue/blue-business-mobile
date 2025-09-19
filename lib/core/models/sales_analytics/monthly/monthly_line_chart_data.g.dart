// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_line_chart_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MonthlyLineChartData _$MonthlyLineChartDataFromJson(
  Map<String, dynamic> json,
) => _MonthlyLineChartData(
  label: json['label'] as String,
  amount: (json['amount'] as num).toDouble(),
);

Map<String, dynamic> _$MonthlyLineChartDataToJson(
  _MonthlyLineChartData instance,
) => <String, dynamic>{'label': instance.label, 'amount': instance.amount};
