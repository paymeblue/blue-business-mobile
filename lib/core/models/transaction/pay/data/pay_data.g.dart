// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayDataImpl _$$PayDataImplFromJson(Map<String, dynamic> json) =>
    _$PayDataImpl(
      transactionId: json['transactionId'] as String,
      amount: json['amount'] as String,
      receiverName: json['receiverName'] as String,
      receiverWallet: json['receiverWallet'] as String,
      reference: json['reference'] as String,
      status: json['status'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$PayDataImplToJson(_$PayDataImpl instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'amount': instance.amount,
      'receiverName': instance.receiverName,
      'receiverWallet': instance.receiverWallet,
      'reference': instance.reference,
      'status': instance.status,
      'createdAt': instance.createdAt,
    };
