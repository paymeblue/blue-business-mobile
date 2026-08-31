// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vend_electricity_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VendElectricityRequest _$VendElectricityRequestFromJson(
  Map<String, dynamic> json,
) => _VendElectricityRequest(
  transactionId: json['transaction_id'] as String,
  passcode: json['passcode'] as String,
  amount: json['amount'] as String,
);

Map<String, dynamic> _$VendElectricityRequestToJson(
  _VendElectricityRequest instance,
) => <String, dynamic>{
  'transaction_id': instance.transactionId,
  'passcode': instance.passcode,
  'amount': instance.amount,
};
