// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionHistoryImpl _$$TransactionHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionHistoryImpl(
      transactionId: json['transaction_id'] as int,
      otherPartyName: json['other_party_name'] as String,
      createdAt: json['created_at'] as String,
      transactionAmount: json['transaction_amount'] as String,
      paymentMode: json['payment_mode'] as String,
      transactionType: json['transaction_type'] as String,
      initals: json['initals'] as String? ?? "N/A",
    );

Map<String, dynamic> _$$TransactionHistoryImplToJson(
        _$TransactionHistoryImpl instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'other_party_name': instance.otherPartyName,
      'created_at': instance.createdAt,
      'transaction_amount': instance.transactionAmount,
      'payment_mode': instance.paymentMode,
      'transaction_type': instance.transactionType,
      'initals': instance.initals,
    };
