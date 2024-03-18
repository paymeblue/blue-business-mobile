// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PushPaymentImpl _$$PushPaymentImplFromJson(Map<String, dynamic> json) =>
    _$PushPaymentImpl(
      businessName: json['business_name'] as String,
      lga: json['lga'] as String,
      amount: json['amount'] as String,
      transactionId: json['transaction_id'] as String,
      dueDate: json['due_date'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$PushPaymentImplToJson(_$PushPaymentImpl instance) =>
    <String, dynamic>{
      'business_name': instance.businessName,
      'lga': instance.lga,
      'amount': instance.amount,
      'transaction_id': instance.transactionId,
      'due_date': instance.dueDate,
      'created_at': instance.createdAt,
    };
