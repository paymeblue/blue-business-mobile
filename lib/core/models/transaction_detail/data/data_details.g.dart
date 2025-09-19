// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DataDetails _$DataDetailsFromJson(Map<String, dynamic> json) => _DataDetails(
  id: (json['id'] as num?)?.toInt(),
  amount: json['amount'] as String,
  receiver: json['receiver'] as String,
  transactionId: json['transaction_id'] as String,
  provider: json['provider'] as String,
  package: json['package'] as String,
  paymentMode: json['payment_mode'] as String,
  createdAt: json['created_at'] as String,
  service: json['service'] as String? ?? "data",
  status: json['status'] as String? ?? "successful",
  balanceBefore: json['balance_before'] as String? ?? "0.00",
  balanceAfter: json['balance_after'] as String? ?? "0.00",
);

Map<String, dynamic> _$DataDetailsToJson(_DataDetails instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'amount': instance.amount,
      'receiver': instance.receiver,
      'transaction_id': instance.transactionId,
      'provider': instance.provider,
      'package': instance.package,
      'payment_mode': instance.paymentMode,
      'created_at': instance.createdAt,
      'service': instance.service,
      'status': instance.status,
      'balance_before': instance.balanceBefore,
      'balance_after': instance.balanceAfter,
    };
