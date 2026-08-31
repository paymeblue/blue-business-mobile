// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_payout_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyPayoutData _$VerifyPayoutDataFromJson(Map<String, dynamic> json) =>
    _VerifyPayoutData(
      id: (json['id'] as num).toInt(),
      reference: json['reference'] as String,
      accountNumber: json['account_number'] as String,
      accountName: json['account_name'] as String,
    );

Map<String, dynamic> _$VerifyPayoutDataToJson(_VerifyPayoutData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reference': instance.reference,
      'account_number': instance.accountNumber,
      'account_name': instance.accountName,
    };
