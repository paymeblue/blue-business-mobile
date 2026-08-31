// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Wallet _$WalletFromJson(Map<String, dynamic> json) => _Wallet(
  id: (json['id'] as num).toInt(),
  balance: json['balance'] as String,
  walletCode: json['wallet_code'] as String,
);

Map<String, dynamic> _$WalletToJson(_Wallet instance) => <String, dynamic>{
  'id': instance.id,
  'balance': instance.balance,
  'wallet_code': instance.walletCode,
};
