// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_payout_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyPayoutRequestImpl _$$VerifyPayoutRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyPayoutRequestImpl(
      bankId: json['bankId'] as int,
      accountNumber: json['accountNumber'] as String,
    );

Map<String, dynamic> _$$VerifyPayoutRequestImplToJson(
        _$VerifyPayoutRequestImpl instance) =>
    <String, dynamic>{
      'bankId': instance.bankId,
      'accountNumber': instance.accountNumber,
    };
