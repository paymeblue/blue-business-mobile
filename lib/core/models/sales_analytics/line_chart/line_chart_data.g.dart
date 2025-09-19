// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_chart_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LineInputData _$LineInputDataFromJson(Map<String, dynamic> json) =>
    _LineInputData(
      label: json['label'] as String,
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$LineInputDataToJson(_LineInputData instance) =>
    <String, dynamic>{'label': instance.label, 'amount': instance.amount};
