// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentLinkReceiptRecordImpl _$$PaymentLinkReceiptRecordImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentLinkReceiptRecordImpl(
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

Map<String, dynamic> _$$PaymentLinkReceiptRecordImplToJson(
    _$PaymentLinkReceiptRecordImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'transaction_id': instance.transactionId,
    'amount': instance.amount,
    'receiver_name': instance.receiverName,
    'phone': instance.phone,
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
