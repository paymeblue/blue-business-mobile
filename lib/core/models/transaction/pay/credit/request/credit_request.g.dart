// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreditRequest _$CreditRequestFromJson(Map<String, dynamic> json) =>
    _CreditRequest(
      transactionId: json['transaction_id'] as String,
      passcode: json['passcode'] as String,
    );

Map<String, dynamic> _$CreditRequestToJson(_CreditRequest instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'passcode': instance.passcode,
    };
