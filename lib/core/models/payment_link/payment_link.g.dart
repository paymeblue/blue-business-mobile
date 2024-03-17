// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentLinkItemImpl _$$PaymentLinkItemImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentLinkItemImpl(
      id: json['id'] as int,
      transactionId: json['transaction_id'] as String,
      amount: json['amount'] as String,
      phone: json['phone'] as String,
      receiverName: json['receiver_name'] as String,
      status: json['status'] as String,
      originalUrl: json['original_url'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$PaymentLinkItemImplToJson(
        _$PaymentLinkItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transaction_id': instance.transactionId,
      'amount': instance.amount,
      'phone': instance.phone,
      'receiver_name': instance.receiverName,
      'status': instance.status,
      'original_url': instance.originalUrl,
      'created_at': instance.createdAt,
    };
