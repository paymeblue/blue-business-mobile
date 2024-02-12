// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionHistoryImpl _$$TransactionHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionHistoryImpl(
      transactionId: json['transactionId'] as int,
      otherPartyName: json['otherPartyName'] as String,
      createdAt: json['createdAt'] as String,
      transactionAmount: json['transactionAmount'] as String,
      paymentMode: json['paymentMode'] as String,
      transactionType: json['transactionType'] as String,
      initals: json['initals'] as String? ?? "N/A",
    );

Map<String, dynamic> _$$TransactionHistoryImplToJson(
        _$TransactionHistoryImpl instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'otherPartyName': instance.otherPartyName,
      'createdAt': instance.createdAt,
      'transactionAmount': instance.transactionAmount,
      'paymentMode': instance.paymentMode,
      'transactionType': instance.transactionType,
      'initals': instance.initals,
    };
