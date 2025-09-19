// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_payout_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyPayoutRequest _$VerifyPayoutRequestFromJson(Map<String, dynamic> json) =>
    _VerifyPayoutRequest(
      bankId: json['bank_id'] as String,
      accountNumber: json['account_number'] as String,
    );

Map<String, dynamic> _$VerifyPayoutRequestToJson(
  _VerifyPayoutRequest instance,
) => <String, dynamic>{
  'bank_id': instance.bankId,
  'account_number': instance.accountNumber,
};
