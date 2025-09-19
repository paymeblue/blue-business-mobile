// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashboardData _$DashboardDataFromJson(Map<String, dynamic> json) =>
    _DashboardData(
      totalStaff: (json['total_staff'] as num?)?.toInt() ?? 0,
      totalBranches: (json['total_branches'] as num?)?.toInt() ?? 0,
      transactionVolume: (json['transaction_volume'] as num?)?.toInt() ?? 0,
      netProfit: (json['net_profit'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$DashboardDataToJson(_DashboardData instance) =>
    <String, dynamic>{
      'total_staff': instance.totalStaff,
      'total_branches': instance.totalBranches,
      'transaction_volume': instance.transactionVolume,
      'net_profit': instance.netProfit,
    };
