// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginDataImpl _$$LoginDataImplFromJson(Map<String, dynamic> json) =>
    _$LoginDataImpl(
      id: json['id'] as int,
      phone: json['phone'] as String,
      kyc: json['kyc'] as String? ?? "basic",
      totalStaff: json['total_staff'] as int? ?? 0,
      totalBranches: json['total_branches'] as int? ?? 0,
      transactionVolume: json['transaction_volume'] as int? ?? 0,
      netProfit: json['net_profit'] as int? ?? 0,
      token: Token.fromJson(json['token'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$LoginDataImplToJson(_$LoginDataImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'phone': instance.phone,
    'kyc': instance.kyc,
    'total_staff': instance.totalStaff,
    'total_branches': instance.totalBranches,
    'transaction_volume': instance.transactionVolume,
    'net_profit': instance.netProfit,
    'token': instance.token,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created_at', instance.createdAt);
  return val;
}
