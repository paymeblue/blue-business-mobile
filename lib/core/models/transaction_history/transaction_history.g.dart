// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionHistory _$TransactionHistoryFromJson(Map<String, dynamic> json) =>
    _TransactionHistory(
      transactionId: json['transaction_id'] as String,
      otherPartyName: json['other_party_name'] as String?,
      transactionAmount: json['transaction_amount'] as String,
      paymentMode: json['payment_mode'] as String,
      transactionType: json['transaction_type'] as String? ?? "debit",
      createdAt: json['created_at'] as String,
      status: json['status'] as String? ?? "pending",
      initials: json['initials'] as String? ?? "N/A",
    );

Map<String, dynamic> _$TransactionHistoryToJson(_TransactionHistory instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'other_party_name': ?instance.otherPartyName,
      'transaction_amount': instance.transactionAmount,
      'payment_mode': instance.paymentMode,
      'transaction_type': instance.transactionType,
      'created_at': instance.createdAt,
      'status': instance.status,
      'initials': instance.initials,
    };
