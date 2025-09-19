// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_payout_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyPayoutAccount _$VerifyPayoutAccountFromJson(Map<String, dynamic> json) =>
    _VerifyPayoutAccount(
      id: (json['id'] as num).toInt(),
      reference: json['reference'] as String,
      accountNumber: json['account_number'] as String,
      accountName: json['account_name'] as String,
      bankId: json['bank_id'] as String,
      name: json['name'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$VerifyPayoutAccountToJson(
  _VerifyPayoutAccount instance,
) => <String, dynamic>{
  'id': instance.id,
  'reference': instance.reference,
  'account_number': instance.accountNumber,
  'account_name': instance.accountName,
  'bank_id': instance.bankId,
  'name': instance.name,
  'created_at': instance.createdAt,
};
