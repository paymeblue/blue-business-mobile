// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardDataImpl _$$DashboardDataImplFromJson(Map<String, dynamic> json) =>
    _$DashboardDataImpl(
      totalStaff: json['total_staff'] as int? ?? 0,
      totalBranches: json['total_branches'] as int? ?? 0,
      transactionVolume: json['transaction_volume'] as int? ?? 0,
      netProfit: json['net_profit'] as int? ?? 0,
    );

Map<String, dynamic> _$$DashboardDataImplToJson(_$DashboardDataImpl instance) =>
    <String, dynamic>{
      'total_staff': instance.totalStaff,
      'total_branches': instance.totalBranches,
      'transaction_volume': instance.transactionVolume,
      'net_profit': instance.netProfit,
    };
