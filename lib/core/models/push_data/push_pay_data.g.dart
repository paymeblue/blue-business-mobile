// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_pay_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PushPayData _$PushPayDataFromJson(Map<String, dynamic> json) => _PushPayData(
  id: (json['id'] as num).toInt(),
  amount: json['amount'] as String,
  receiverName: json['receiver_name'] as String,
  receiverWallet: json['receiver_wallet'] as String,
  reference: json['reference'] as String,
  status: json['status'] as String,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$PushPayDataToJson(_PushPayData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'receiver_name': instance.receiverName,
      'receiver_wallet': instance.receiverWallet,
      'reference': instance.reference,
      'status': instance.status,
      'created_at': instance.createdAt,
    };
