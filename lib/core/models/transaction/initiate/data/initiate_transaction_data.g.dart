// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiate_transaction_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InitiateTransactionData _$InitiateTransactionDataFromJson(
  Map<String, dynamic> json,
) => _InitiateTransactionData(
  id: (json['id'] as num).toInt(),
  transactionId: json['transaction_id'] as String,
  amount: json['amount'] as String,
  status: json['status'] as String,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$InitiateTransactionDataToJson(
  _InitiateTransactionData instance,
) => <String, dynamic>{
  'id': instance.id,
  'transaction_id': instance.transactionId,
  'amount': instance.amount,
  'status': instance.status,
  'created_at': instance.createdAt,
};
