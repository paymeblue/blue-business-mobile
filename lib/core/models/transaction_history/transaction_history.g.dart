// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionHistoryImpl _$$TransactionHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionHistoryImpl(
      transactionId: json['transaction_id'] as String,
      receiverName: json['receiver_name'] as String?,
      senderName: json['sender_name'] as String?,
      amount: (json['amount'] as num).toDouble(),
      paymentMode: json['payment_mode'] as String? ?? "blue-user",
      type: json['type'] as String?,
      createdAt: json['created_at'] as String,
      status: json['status'] as String? ?? "pending",
      initials: json['initials'] as String? ?? "N/A",
    );

Map<String, dynamic> _$$TransactionHistoryImplToJson(
    _$TransactionHistoryImpl instance) {
  final val = <String, dynamic>{
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
  val['initials'] = instance.initials;
  return val;
}
