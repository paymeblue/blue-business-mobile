// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topup_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TopupAccount _$TopupAccountFromJson(Map<String, dynamic> json) =>
    _TopupAccount(
      id: (json['id'] as num).toInt(),
      accountName: json['account_name'] as String,
      bankName: json['bank_name'] as String,
      accountNumber: json['account_number'] as String,
    );

Map<String, dynamic> _$TopupAccountToJson(_TopupAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account_name': instance.accountName,
      'bank_name': instance.bankName,
      'account_number': instance.accountNumber,
    };
