// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReceiptDataImpl _$$ReceiptDataImplFromJson(Map<String, dynamic> json) =>
    _$ReceiptDataImpl(
      id: (json['id'] as num).toInt(),
      amount: json['amount'] as String,
      orderReference: json['order_reference'] as String? ?? "",
      receiverName: json['receiver_name'] as String,
      receiverWallet: json['receiver_wallet'] as String,
      paymentMode: json['payment_mode'] as String,
      createdAt: json['created_at'] as String,
      status: json['status'] as String? ?? "pending",
      senderName: json['sender_name'] as String?,
      narration: json['narration'] as String?,
    );

Map<String, dynamic> _$$ReceiptDataImplToJson(_$ReceiptDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'order_reference': instance.orderReference,
      'receiver_name': instance.receiverName,
      'receiver_wallet': instance.receiverWallet,
      'payment_mode': instance.paymentMode,
      'created_at': instance.createdAt,
      'status': instance.status,
      if (instance.senderName case final value?) 'sender_name': value,
      if (instance.narration case final value?) 'narration': value,
    };
