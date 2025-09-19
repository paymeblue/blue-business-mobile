// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentLinkReceiptRecord _$PaymentLinkReceiptRecordFromJson(
  Map<String, dynamic> json,
) => _PaymentLinkReceiptRecord(
  id: (json['id'] as num).toInt(),
  transactionId: json['transaction_id'] as String,
  amount: json['amount'] as String,
  receiverName: json['receiver_name'] as String,
  phone: json['phone'] as String,
  createdAt: json['created_at'] as String,
  status: json['status'] as String? ?? "pending",
  senderName: json['sender_name'] as String?,
  narration: json['narration'] as String?,
);

Map<String, dynamic> _$PaymentLinkReceiptRecordToJson(
  _PaymentLinkReceiptRecord instance,
) => <String, dynamic>{
  'id': instance.id,
  'transaction_id': instance.transactionId,
  'amount': instance.amount,
  'receiver_name': instance.receiverName,
  'phone': instance.phone,
  'created_at': instance.createdAt,
  'status': instance.status,
  'sender_name': ?instance.senderName,
  'narration': ?instance.narration,
};
