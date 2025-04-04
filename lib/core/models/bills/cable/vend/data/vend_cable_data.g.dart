// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vend_cable_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendCableDataImpl _$$VendCableDataImplFromJson(Map<String, dynamic> json) =>
    _$VendCableDataImpl(
      transactionId: json['transaction_id'] as String,
      customerName: json['customer_name'] as String,
      customerInfo: json['customer_info'] as String,
      receiver: json['receiver'] as String,
      provider: json['provider'] as String,
      package: json['package'] as String,
      paymentReference: json['payment_reference'] as String,
      amount: (json['amount'] as num).toInt(),
      serviceCharget: (json['service_charget'] as num?)?.toInt() ?? 0,
      status: json['status'] as String? ?? "pending",
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$VendCableDataImplToJson(_$VendCableDataImpl instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'customer_name': instance.customerName,
      'customer_info': instance.customerInfo,
      'receiver': instance.receiver,
      'provider': instance.provider,
      'package': instance.package,
      'payment_reference': instance.paymentReference,
      'amount': instance.amount,
      'service_charget': instance.serviceCharget,
      'status': instance.status,
      if (instance.createdAt case final value?) 'created_at': value,
    };
