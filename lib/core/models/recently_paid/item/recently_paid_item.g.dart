// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recently_paid_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecentlyPaidItem _$RecentlyPaidItemFromJson(Map<String, dynamic> json) =>
    _RecentlyPaidItem(
      uFirstName: json['u_first_name'] as String,
      uLastName: json['u_last_name'] as String,
      wWalletCode: json['w_wallet_code'] as String,
      uMiddleName: json['u_middle_name'] as String?,
    );

Map<String, dynamic> _$RecentlyPaidItemToJson(_RecentlyPaidItem instance) =>
    <String, dynamic>{
      'u_first_name': instance.uFirstName,
      'u_last_name': instance.uLastName,
      'w_wallet_code': instance.wWalletCode,
      'u_middle_name': ?instance.uMiddleName,
    };
