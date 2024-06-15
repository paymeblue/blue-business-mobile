// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vend_electricity_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendElectricityRequestImpl _$$VendElectricityRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$VendElectricityRequestImpl(
      transactionId: json['transaction_id'] as String,
      passcode: json['passcode'] as String,
      amount: json['amount'] as String,
    );

Map<String, dynamic> _$$VendElectricityRequestImplToJson(
        _$VendElectricityRequestImpl instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'passcode': instance.passcode,
      'amount': instance.amount,
    };
