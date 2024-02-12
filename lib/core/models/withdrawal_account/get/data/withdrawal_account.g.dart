// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WithdrawalAccountImpl _$$WithdrawalAccountImplFromJson(
        Map<String, dynamic> json) =>
    _$WithdrawalAccountImpl(
      id: json['id'] as int,
      bankId: json['bankId'] as int,
      name: json['name'] as String,
      accountName: json['accountName'] as String,
      accountNumber: json['accountNumber'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$WithdrawalAccountImplToJson(
        _$WithdrawalAccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bankId': instance.bankId,
      'name': instance.name,
      'accountName': instance.accountName,
      'accountNumber': instance.accountNumber,
      'createdAt': instance.createdAt,
    };
