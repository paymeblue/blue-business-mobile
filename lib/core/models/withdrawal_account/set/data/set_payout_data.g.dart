// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_payout_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetPayoutDataImpl _$$SetPayoutDataImplFromJson(Map<String, dynamic> json) =>
    _$SetPayoutDataImpl(
      withdrawalAccount: WithdrawalAccount.fromJson(
          json['withdrawalAccount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SetPayoutDataImplToJson(_$SetPayoutDataImpl instance) =>
    <String, dynamic>{
      'withdrawalAccount': instance.withdrawalAccount,
    };
