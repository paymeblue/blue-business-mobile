// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiate_transaction_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InitiateTransactionRequest _$InitiateTransactionRequestFromJson(
  Map<String, dynamic> json,
) => _InitiateTransactionRequest(
  amount: json['amount'] as String,
  narration: json['narration'] as String?,
  paymentMode: json['payment_mode'] as String,
);

Map<String, dynamic> _$InitiateTransactionRequestToJson(
  _InitiateTransactionRequest instance,
) => <String, dynamic>{
  'amount': instance.amount,
  'narration': ?instance.narration,
  'payment_mode': instance.paymentMode,
};
