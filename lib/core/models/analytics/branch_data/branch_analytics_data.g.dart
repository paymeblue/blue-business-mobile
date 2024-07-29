// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_analytics_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BranchAnalyticsDataImpl _$$BranchAnalyticsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BranchAnalyticsDataImpl(
      transaction:
          AnalyticsItem.fromJson(json['transaction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BranchAnalyticsDataImplToJson(
        _$BranchAnalyticsDataImpl instance) =>
    <String, dynamic>{
      'transaction': instance.transaction,
    };
