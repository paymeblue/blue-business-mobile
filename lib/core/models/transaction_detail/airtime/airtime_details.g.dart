// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airtime_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AirtimeDetailsImpl _$$AirtimeDetailsImplFromJson(Map<String, dynamic> json) =>
    _$AirtimeDetailsImpl(
      id: (json['id'] as num?)?.toInt(),
      amount: json['amount'] as String,
      receiver: json['receiver'] as String,
      transactionId: json['transaction_id'] as String,
      provider: json['provider'] as String,
      createdAt: json['created_at'] as String,
      service: json['service'] as String? ?? "airtime",
      status: json['status'] as String? ?? "successful",
      balanceBefore: json['balance_before'] as String? ?? "0.00",
      balanceAfter: json['balance_after'] as String? ?? "0.00",
    );

Map<String, dynamic> _$$AirtimeDetailsImplToJson(
        _$AirtimeDetailsImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      'amount': instance.amount,
      'receiver': instance.receiver,
      'transaction_id': instance.transactionId,
      'provider': instance.provider,
      'created_at': instance.createdAt,
      'service': instance.service,
      'status': instance.status,
      'balance_before': instance.balanceBefore,
      'balance_after': instance.balanceAfter,
    };
