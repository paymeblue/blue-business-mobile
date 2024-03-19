// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_payout_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyPayoutRequestImpl _$$VerifyPayoutRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyPayoutRequestImpl(
      bankId: json['bank_id'] as String,
      accountNumber: json['account_number'] as String,
    );

Map<String, dynamic> _$$VerifyPayoutRequestImplToJson(
        _$VerifyPayoutRequestImpl instance) =>
    <String, dynamic>{
      'bank_id': instance.bankId,
      'account_number': instance.accountNumber,
    };
