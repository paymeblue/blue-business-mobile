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
      receiverName: json['receiver_name'] as String?,
      senderName: json['sender_name'] as String?,
      amount: json['amount'] as String,
      paymentMode: json['payment_mode'] as String,
      type: json['type'] as String?,
      createdAt: json['created_at'] as String,
      status: json['status'] as String? ?? "pending",
    );

Map<String, dynamic> _$$TransactionHistoryImplToJson(
    _$TransactionHistoryImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'user_id': instance.userId,
    'transaction_id': instance.transactionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('receiver_name', instance.receiverName);
  writeNotNull('sender_name', instance.senderName);
  val['amount'] = instance.amount;
  val['payment_mode'] = instance.paymentMode;
  writeNotNull('type', instance.type);
  val['created_at'] = instance.createdAt;
  val['status'] = instance.status;
  return val;
}
