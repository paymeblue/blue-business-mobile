// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_cable_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyCableData _$VerifyCableDataFromJson(Map<String, dynamic> json) =>
    _VerifyCableData(
      transactionId: json['transaction_id'] as String,
      customerName: json['customer_name'] as String,
      customerInfo: json['customer_info'] as String,
      receiver: json['receiver'] as String,
      provider: json['provider'] as String,
      package: json['package'] as String,
      serviceCharge: json['service_charge'] as String? ?? "100.00",
      amount: json['amount'] as String? ?? "0.00",
      status: json['status'] as String? ?? "pending",
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$VerifyCableDataToJson(_VerifyCableData instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'customer_name': instance.customerName,
      'customer_info': instance.customerInfo,
      'receiver': instance.receiver,
      'provider': instance.provider,
      'package': instance.package,
      'service_charge': instance.serviceCharge,
      'amount': instance.amount,
      'status': instance.status,
      'created_at': ?instance.createdAt,
    };
