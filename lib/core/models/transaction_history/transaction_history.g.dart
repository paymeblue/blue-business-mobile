// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionHistoryImpl _$$TransactionHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionHistoryImpl(
      transactionId: json['transaction_id'] as String,
      otherPartyName: json['other_party_name'] as String?,
      transactionAmount: json['transaction_amount'] as String,
      paymentMode: json['payment_mode'] as String,
      transactionType: json['transaction_type'] as String? ?? "debit",
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

  writeNotNull('other_party_name', instance.otherPartyName);
  val['transaction_amount'] = instance.transactionAmount;
  val['payment_mode'] = instance.paymentMode;
  val['transaction_type'] = instance.transactionType;
  val['created_at'] = instance.createdAt;
  val['status'] = instance.status;
  val['initials'] = instance.initials;
  return val;
}
