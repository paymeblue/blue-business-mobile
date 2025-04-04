// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReceiptRecordImpl _$$ReceiptRecordImplFromJson(Map<String, dynamic> json) =>
    _$ReceiptRecordImpl(
      id: (json['id'] as num).toInt(),
      amount: json['amount'] as String,
      orderReference: json['order_reference'] as String,
      receiverName: json['receiver_name'] as String,
      receivedBy: json['received_by'] as String,
      paymentMode: json['payment_mode'] as String,
      createdAt: json['created_at'] as String,
      status: json['status'] as String? ?? "pending",
      senderName: json['sender_name'] as String?,
      narration: json['narration'] as String?,
    );

Map<String, dynamic> _$$ReceiptRecordImplToJson(_$ReceiptRecordImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'order_reference': instance.orderReference,
      'receiver_name': instance.receiverName,
      'received_by': instance.receivedBy,
      'payment_mode': instance.paymentMode,
      'created_at': instance.createdAt,
      'status': instance.status,
      if (instance.senderName case final value?) 'sender_name': value,
      if (instance.narration case final value?) 'narration': value,
    };
