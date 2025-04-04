// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vend_airtime_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendAirtimeDataImpl _$$VendAirtimeDataImplFromJson(
        Map<String, dynamic> json) =>
    _$VendAirtimeDataImpl(
      transactionId: json['transaction_id'] as String,
      receiver: json['receiver'] as String,
      provider: json['provider'] as String,
      paymentReference: json['payment_reference'] as String,
      amount: json['amount'] as String,
      status: json['status'] as String? ?? "pending",
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$VendAirtimeDataImplToJson(
        _$VendAirtimeDataImpl instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'receiver': instance.receiver,
      'provider': instance.provider,
      'payment_reference': instance.paymentReference,
      'amount': instance.amount,
      'status': instance.status,
      if (instance.createdAt case final value?) 'created_at': value,
    };
