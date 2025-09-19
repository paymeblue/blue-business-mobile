// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BankItem _$BankItemFromJson(Map<String, dynamic> json) => _BankItem(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  logoUrl: json['logo_url'] as String?,
);

Map<String, dynamic> _$BankItemToJson(_BankItem instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'logo_url': ?instance.logoUrl,
};
