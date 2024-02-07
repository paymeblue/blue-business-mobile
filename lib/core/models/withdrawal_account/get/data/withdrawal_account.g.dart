// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WithdrawalAccountImpl _$$WithdrawalAccountImplFromJson(
        Map<String, dynamic> json) =>
    _$WithdrawalAccountImpl(
      id: json['id'] as int,
      bankId: json['bank_id'] as int,
      name: json['name'] as String,
      accountName: json['account_name'] as String,
      accountNumber: json['account_number'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$WithdrawalAccountImplToJson(
        _$WithdrawalAccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bank_id': instance.bankId,
      'name': instance.name,
      'account_name': instance.accountName,
      'account_number': instance.accountNumber,
      'created_at': instance.createdAt,
    };
