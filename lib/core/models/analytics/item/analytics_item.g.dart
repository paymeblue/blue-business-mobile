// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnalyticsItemImpl _$$AnalyticsItemImplFromJson(Map<String, dynamic> json) =>
    _$AnalyticsItemImpl(
      total: json['total'] as String? ?? "0.00",
      current: json['current'] as String? ?? "0.00",
      previous: json['previous'] as String? ?? "0.00",
    );

Map<String, dynamic> _$$AnalyticsItemImplToJson(_$AnalyticsItemImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'current': instance.current,
      'previous': instance.previous,
    };
