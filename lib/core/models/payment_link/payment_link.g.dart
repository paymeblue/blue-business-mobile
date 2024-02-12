// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentLinkItemImpl _$$PaymentLinkItemImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentLinkItemImpl(
      id: json['id'] as int,
      transactionId: json['transactionId'] as int,
      amount: json['amount'] as String,
      phone: json['phone'] as String,
      receiverName: json['receiverName'] as String,
      status: json['status'] as String,
      originalUrl: json['originalUrl'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$PaymentLinkItemImplToJson(
        _$PaymentLinkItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transactionId': instance.transactionId,
      'amount': instance.amount,
      'phone': instance.phone,
      'receiverName': instance.receiverName,
      'status': instance.status,
      'originalUrl': instance.originalUrl,
      'createdAt': instance.createdAt,
    };
