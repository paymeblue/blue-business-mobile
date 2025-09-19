// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PayData _$PayDataFromJson(Map<String, dynamic> json) => _PayData(
  transactionId: json['transaction_id'] as String,
  amount: json['amount'] as String,
  receiverName: json['receiver_name'] as String,
  receiverWallet: json['receiver_wallet'] as String,
  reference: json['reference'] as String?,
  status: json['status'] as String,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$PayDataToJson(_PayData instance) => <String, dynamic>{
  'transaction_id': instance.transactionId,
  'amount': instance.amount,
  'receiver_name': instance.receiverName,
  'receiver_wallet': instance.receiverWallet,
  'reference': ?instance.reference,
  'status': instance.status,
  'created_at': instance.createdAt,
};
