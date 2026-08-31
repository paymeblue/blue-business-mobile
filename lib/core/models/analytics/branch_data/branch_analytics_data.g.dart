// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_analytics_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BranchAnalyticsData _$BranchAnalyticsDataFromJson(Map<String, dynamic> json) =>
    _BranchAnalyticsData(
      transaction: AnalyticsItem.fromJson(
        json['transaction'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$BranchAnalyticsDataToJson(
  _BranchAnalyticsData instance,
) => <String, dynamic>{'transaction': instance.transaction};
