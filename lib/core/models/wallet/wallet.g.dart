// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletImpl _$$WalletImplFromJson(Map<String, dynamic> json) => _$WalletImpl(
      id: json['id'] as int,
      balance: json['balance'] as String,
      walletCode: json['walletCode'] as String,
    );

Map<String, dynamic> _$$WalletImplToJson(_$WalletImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'balance': instance.balance,
      'walletCode': instance.walletCode,
    };
