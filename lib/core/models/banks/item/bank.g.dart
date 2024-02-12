// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankItemImpl _$$BankItemImplFromJson(Map<String, dynamic> json) =>
    _$BankItemImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      logoUrl: json['logoUrl'] as String?,
    );

Map<String, dynamic> _$$BankItemImplToJson(_$BankItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logoUrl': instance.logoUrl,
    };
