// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_payout_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyPayoutDataImpl _$$VerifyPayoutDataImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyPayoutDataImpl(
      account:
          VerifyPayoutAccount.fromJson(json['account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerifyPayoutDataImplToJson(
        _$VerifyPayoutDataImpl instance) =>
    <String, dynamic>{
      'account': instance.account,
    };
