// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentLinkReceiptRecordImpl _$$PaymentLinkReceiptRecordImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentLinkReceiptRecordImpl(
      id: json['id'] as int,
      transactionId: json['transaction_id'] as String,
      amount: json['amount'] as String,
      receiverName: json['receiver_name'] as String,
      paymentMode: json['payment_mode'] as String?,
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
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('payment_mode', instance.paymentMode);
  val['created_at'] = instance.createdAt;
  val['status'] = instance.status;
  writeNotNull('sender_name', instance.senderName);
  writeNotNull('narration', instance.narration);
  return val;
}
