// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_line_chart_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeeklyLineChartDataImpl _$$WeeklyLineChartDataImplFromJson(
        Map<String, dynamic> json) =>
    _$WeeklyLineChartDataImpl(
      label: json['label'] as String,
      amount: (json['amount'] as num).toDouble(),
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$WeeklyLineChartDataImplToJson(
        _$WeeklyLineChartDataImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'amount': instance.amount,
      if (instance.date case final value?) 'date': value,
    };
