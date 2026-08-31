// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnalyticsItem _$AnalyticsItemFromJson(Map<String, dynamic> json) =>
    _AnalyticsItem(
      total: json['total'] as String? ?? "0.00",
      current: json['current'] as String? ?? "0.00",
      previous: json['previous'] as String? ?? "0.00",
    );

Map<String, dynamic> _$AnalyticsItemToJson(_AnalyticsItem instance) =>
    <String, dynamic>{
      'total': instance.total,
      'current': instance.current,
      'previous': instance.previous,
    };
