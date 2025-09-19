// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recently_paid_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecentlyPaidData _$RecentlyPaidDataFromJson(Map<String, dynamic> json) =>
    _RecentlyPaidData(
      beneficiaries: (json['beneficiaries'] as List<dynamic>)
          .map((e) => RecentlyPaidItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecentlyPaidDataToJson(_RecentlyPaidData instance) =>
    <String, dynamic>{'beneficiaries': instance.beneficiaries};
