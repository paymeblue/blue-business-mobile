// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionHistoryImpl _$$TransactionHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionHistoryImpl(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      transactionId: json['transaction_id'] as int,
      receiverName: json['receiver_name'] as String,
      senderName: json['sender_name'] as String,
      amount: json['amount'] as String,
      paymentMode: json['payment_mode'] as String,
      type: json['type'] as String,
      createdAt: json['created_at'] as String,
      status: json['status'] as String? ?? "pending",
    );

Map<String, dynamic> _$$TransactionHistoryImplToJson(
        _$TransactionHistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'transaction_id': instance.transactionId,
      'receiver_name': instance.receiverName,
      'sender_name': instance.senderName,
      'amount': instance.amount,
      'payment_mode': instance.paymentMode,
      'type': instance.type,
      'created_at': instance.createdAt,
      'status': instance.status,
    };
