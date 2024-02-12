// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiate_transaction_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitiateTransactionRequestImpl _$$InitiateTransactionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$InitiateTransactionRequestImpl(
      amount: json['amount'] as String,
      narration: json['narration'] as String?,
      paymentMode: json['paymentMode'] as String,
    );

Map<String, dynamic> _$$InitiateTransactionRequestImplToJson(
        _$InitiateTransactionRequestImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'narration': instance.narration,
      'paymentMode': instance.paymentMode,
    };
