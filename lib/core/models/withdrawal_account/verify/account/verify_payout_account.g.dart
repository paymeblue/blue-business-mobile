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
      accountNumber: json['accountNumber'] as String,
      accountName: json['accountName'] as String,
      bankId: json['bankId'] as String,
      name: json['name'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$VerifyPayoutAccountImplToJson(
        _$VerifyPayoutAccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reference': instance.reference,
      'accountNumber': instance.accountNumber,
      'accountName': instance.accountName,
      'bankId': instance.bankId,
      'name': instance.name,
      'createdAt': instance.createdAt,
    };
