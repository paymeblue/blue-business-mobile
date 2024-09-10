// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BillPackageImpl _$$BillPackageImplFromJson(Map<String, dynamic> json) =>
    _$BillPackageImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      amount: json['amount'] as String,
    );

Map<String, dynamic> _$$BillPackageImplToJson(_$BillPackageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'amount': instance.amount,
    };
