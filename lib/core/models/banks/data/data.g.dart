// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BankData _$BankDataFromJson(Map<String, dynamic> json) => _BankData(
  banks: (json['banks'] as List<dynamic>)
      .map((e) => BankItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BankDataToJson(_BankData instance) => <String, dynamic>{
  'banks': instance.banks,
};
