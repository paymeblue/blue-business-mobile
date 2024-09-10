// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airtime_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AirtimeDetailsImpl _$$AirtimeDetailsImplFromJson(Map<String, dynamic> json) =>
    _$AirtimeDetailsImpl(
      id: (json['id'] as num).toInt(),
      amount: json['amount'] as String,
      receiver: json['receiver'] as String,
      transactionId: json['transaction_id'] as String,
      provider: json['provider'] as String,
      createdAt: json['created_at'] as String,
      service: json['service'] as String? ?? "airtime",
      status: json['status'] as String? ?? "successful",
    );

Map<String, dynamic> _$$AirtimeDetailsImplToJson(
        _$AirtimeDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'receiver': instance.receiver,
      'transaction_id': instance.transactionId,
      'provider': instance.provider,
      'created_at': instance.createdAt,
      'service': instance.service,
      'status': instance.status,
    };
