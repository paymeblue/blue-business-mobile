// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_line_chart_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeeklyLineChartData _$WeeklyLineChartDataFromJson(Map<String, dynamic> json) =>
    _WeeklyLineChartData(
      label: json['label'] as String,
      amount: (json['amount'] as num).toDouble(),
      date: json['date'] as String?,
    );

Map<String, dynamic> _$WeeklyLineChartDataToJson(
  _WeeklyLineChartData instance,
) => <String, dynamic>{
  'label': instance.label,
  'amount': instance.amount,
  'date': ?instance.date,
};
