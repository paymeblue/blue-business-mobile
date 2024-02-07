// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recently_paid_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecentlyPaidItemImpl _$$RecentlyPaidItemImplFromJson(
        Map<String, dynamic> json) =>
    _$RecentlyPaidItemImpl(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      walletCode: json['wallet_code'] as String,
      middleName: json['middle_name'] as String?,
    );

Map<String, dynamic> _$$RecentlyPaidItemImplToJson(
    _$RecentlyPaidItemImpl instance) {
  final val = <String, dynamic>{
    'first_name': instance.firstName,
    'last_name': instance.lastName,
    'wallet_code': instance.walletCode,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('middle_name', instance.middleName);
  return val;
}
