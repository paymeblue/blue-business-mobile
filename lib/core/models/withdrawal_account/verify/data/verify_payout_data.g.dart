// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_payout_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyPayoutDataImpl _$$VerifyPayoutDataImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyPayoutDataImpl(
      id: json['id'] as int,
      reference: json['reference'] as String,
      accountNumber: json['account_number'] as String,
      accountName: json['account_name'] as String,
    );

Map<String, dynamic> _$$VerifyPayoutDataImplToJson(
        _$VerifyPayoutDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reference': instance.reference,
      'account_number': instance.accountNumber,
      'account_name': instance.accountName,
    };
