// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vend_airtime_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VendAirtimeData _$VendAirtimeDataFromJson(Map<String, dynamic> json) =>
    _VendAirtimeData(
      transactionId: json['transaction_id'] as String,
      receiver: json['receiver'] as String,
      provider: json['provider'] as String,
      paymentReference: json['payment_reference'] as String,
      amount: json['amount'] as String,
      status: json['status'] as String? ?? "pending",
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$VendAirtimeDataToJson(_VendAirtimeData instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'receiver': instance.receiver,
      'provider': instance.provider,
      'payment_reference': instance.paymentReference,
      'amount': instance.amount,
      'status': instance.status,
      'created_at': ?instance.createdAt,
    };
