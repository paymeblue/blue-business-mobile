// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_dash_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessDashDataImpl _$$BusinessDashDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessDashDataImpl(
      totalBranches: (json['total_branches'] as num?)?.toInt() ?? 0,
      totalStaff: (json['total_staff'] as num?)?.toInt() ?? 0,
      transactionVolume: (json['transaction_volume'] as num?)?.toInt() ?? 0,
      walletBalance: json['wallet_balance'] as String? ?? "0.00",
    );

Map<String, dynamic> _$$BusinessDashDataImplToJson(
        _$BusinessDashDataImpl instance) =>
    <String, dynamic>{
      'total_branches': instance.totalBranches,
      'total_staff': instance.totalStaff,
      'transaction_volume': instance.transactionVolume,
      'wallet_balance': instance.walletBalance,
    };
