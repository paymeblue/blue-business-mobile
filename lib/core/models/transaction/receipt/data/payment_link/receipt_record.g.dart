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
      orderReference: json['orderReference'] as String,
      receiverName: json['receiverName'] as String,
      receivedBy: json['receivedBy'] as String,
      paymentMode: json['paymentMode'] as String,
      createdAt: json['createdAt'] as String,
      status: json['status'] as String? ?? "pending",
      senderName: json['senderName'] as String?,
      narration: json['narration'] as String?,
    );

Map<String, dynamic> _$$PaymentLinkReceiptRecordImplToJson(
        _$PaymentLinkReceiptRecordImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'orderReference': instance.orderReference,
      'receiverName': instance.receiverName,
      'receivedBy': instance.receivedBy,
      'paymentMode': instance.paymentMode,
      'createdAt': instance.createdAt,
      'status': instance.status,
      'senderName': instance.senderName,
      'narration': instance.narration,
    };
