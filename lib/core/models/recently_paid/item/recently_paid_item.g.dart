// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recently_paid_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecentlyPaidItemImpl _$$RecentlyPaidItemImplFromJson(
        Map<String, dynamic> json) =>
    _$RecentlyPaidItemImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      walletCode: json['walletCode'] as String,
      middleName: json['middleName'] as String?,
    );

Map<String, dynamic> _$$RecentlyPaidItemImplToJson(
        _$RecentlyPaidItemImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'walletCode': instance.walletCode,
      'middleName': instance.middleName,
    };
