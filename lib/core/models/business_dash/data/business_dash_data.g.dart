// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_dash_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BusinessDashData _$BusinessDashDataFromJson(Map<String, dynamic> json) =>
    _BusinessDashData(
      totalBranches: (json['total_branches'] as num?)?.toInt() ?? 0,
      totalStaff: (json['total_staff'] as num?)?.toInt() ?? 0,
      transactionVolume: (json['transaction_volume'] as num?)?.toInt() ?? 0,
      walletBalance: json['wallet_balance'] as String? ?? "0.00",
    );

Map<String, dynamic> _$BusinessDashDataToJson(_BusinessDashData instance) =>
    <String, dynamic>{
      'total_branches': instance.totalBranches,
      'total_staff': instance.totalStaff,
      'transaction_volume': instance.transactionVolume,
      'wallet_balance': instance.walletBalance,
    };
