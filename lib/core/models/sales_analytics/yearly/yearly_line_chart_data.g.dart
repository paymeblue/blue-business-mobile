// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yearly_line_chart_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_YearlyLineChartData _$YearlyLineChartDataFromJson(Map<String, dynamic> json) =>
    _YearlyLineChartData(
      label: json['label'] as String,
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$YearlyLineChartDataToJson(
  _YearlyLineChartData instance,
) => <String, dynamic>{'label': instance.label, 'amount': instance.amount};
