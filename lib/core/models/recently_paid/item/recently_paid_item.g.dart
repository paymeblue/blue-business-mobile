// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recently_paid_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecentlyPaidItemImpl _$$RecentlyPaidItemImplFromJson(
        Map<String, dynamic> json) =>
    _$RecentlyPaidItemImpl(
      uFirstName: json['u_first_name'] as String,
      uLastName: json['u_last_name'] as String,
      wWalletCode: json['w_wallet_code'] as String,
      uMiddleName: json['u_middle_name'] as String?,
    );

Map<String, dynamic> _$$RecentlyPaidItemImplToJson(
    _$RecentlyPaidItemImpl instance) {
  final val = <String, dynamic>{
    'u_first_name': instance.uFirstName,
    'u_last_name': instance.uLastName,
    'w_wallet_code': instance.wWalletCode,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('u_middle_name', instance.uMiddleName);
  return val;
}
