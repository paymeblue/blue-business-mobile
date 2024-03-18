// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recently_paid_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecentlyPaidDataImpl _$$RecentlyPaidDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RecentlyPaidDataImpl(
      beneficiaries: (json['beneficiaries'] as List<dynamic>)
          .map((e) => RecentlyPaidItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RecentlyPaidDataImplToJson(
        _$RecentlyPaidDataImpl instance) =>
    <String, dynamic>{
      'beneficiaries': instance.beneficiaries,
    };
