// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankDataImpl _$$BankDataImplFromJson(Map<String, dynamic> json) =>
    _$BankDataImpl(
      banks: (json['banks'] as List<dynamic>)
          .map((e) => BankItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BankDataImplToJson(_$BankDataImpl instance) =>
    <String, dynamic>{
      'banks': instance.banks,
    };
