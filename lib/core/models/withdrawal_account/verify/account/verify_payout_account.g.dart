// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_payout_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyPayoutAccountImpl _$$VerifyPayoutAccountImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyPayoutAccountImpl(
      id: json['id'] as int,
      reference: json['reference'] as String,
      accountNumber: json['account_number'] as String,
      accountName: json['account_name'] as String,
      bankId: json['bank_id'] as String,
      name: json['name'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$VerifyPayoutAccountImplToJson(
        _$VerifyPayoutAccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reference': instance.reference,
      'account_number': instance.accountNumber,
      'account_name': instance.accountName,
      'bank_id': instance.bankId,
      'name': instance.name,
      'created_at': instance.createdAt,
    };
