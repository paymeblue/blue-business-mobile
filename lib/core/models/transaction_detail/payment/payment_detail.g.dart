// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentDetailImpl _$$PaymentDetailImplFromJson(Map<String, dynamic> json) =>
    _$PaymentDetailImpl(
      id: json['id'] as int,
      amount: json['amount'] as String,
      receiver: json['receiver'] as String,
      details: json['details'] as String,
      paymentMode: json['payment_mode'] as String,
      createdAt: json['created_at'] as String,
      transactionId: json['transaction_id'] as String,
      service: json['service'] as String? ?? "payment",
      status: json['status'] as String? ?? "pending",
    );

Map<String, dynamic> _$$PaymentDetailImplToJson(_$PaymentDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'receiver': instance.receiver,
      'details': instance.details,
      'payment_mode': instance.paymentMode,
      'created_at': instance.createdAt,
      'transaction_id': instance.transactionId,
      'service': instance.service,
      'status': instance.status,
    };
