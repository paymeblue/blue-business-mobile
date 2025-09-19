// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WithdrawalAccount _$WithdrawalAccountFromJson(Map<String, dynamic> json) =>
    _WithdrawalAccount(
      id: (json['id'] as num).toInt(),
      bankId: (json['bank_id'] as num).toInt(),
      bankName: json['bank_name'] as String,
      accountName: json['account_name'] as String,
      accountNumber: json['account_number'] as String,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$WithdrawalAccountToJson(_WithdrawalAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bank_id': instance.bankId,
      'bank_name': instance.bankName,
      'account_name': instance.accountName,
      'account_number': instance.accountNumber,
      'created_at': ?instance.createdAt,
    };
