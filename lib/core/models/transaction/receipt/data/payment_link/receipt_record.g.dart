// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentLinkReceiptRecordImpl _$$PaymentLinkReceiptRecordImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentLinkReceiptRecordImpl(
      id: json['id'] as int,
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

Map<String, dynamic> _$$PaymentLinkReceiptRecordImplToJson(
    _$PaymentLinkReceiptRecordImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'amount': instance.amount,
    'order_reference': instance.orderReference,
    'receiver_name': instance.receiverName,
    'received_by': instance.receivedBy,
    'payment_mode': instance.paymentMode,
    'created_at': instance.createdAt,
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sender_name', instance.senderName);
  writeNotNull('narration', instance.narration);
  return val;
}
