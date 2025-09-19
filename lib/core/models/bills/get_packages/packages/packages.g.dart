// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BillPackage _$BillPackageFromJson(Map<String, dynamic> json) => _BillPackage(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  amount: json['amount'] as String,
);

Map<String, dynamic> _$BillPackageToJson(_BillPackage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'amount': instance.amount,
    };
