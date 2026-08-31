// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vend_electricity_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VendElectricityData _$VendElectricityDataFromJson(Map<String, dynamic> json) =>
    _VendElectricityData(
      transactionId: json['transaction_id'] as String,
      customerName: json['customer_name'] as String,
      customerInfo: json['customer_info'] as String,
      receiver: json['receiver'] as String,
      provider: json['provider'] as String,
      meterType: json['meter_type'] as String,
      paymentReference: json['payment_reference'] as String,
      amount: json['amount'] as String,
      status: json['status'] as String? ?? "pending",
      createdAt: json['created_at'] as String?,
      units: json['units'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$VendElectricityDataToJson(
  _VendElectricityData instance,
) => <String, dynamic>{
  'transaction_id': instance.transactionId,
  'customer_name': instance.customerName,
  'customer_info': instance.customerInfo,
  'receiver': instance.receiver,
  'provider': instance.provider,
  'meter_type': instance.meterType,
  'payment_reference': instance.paymentReference,
  'amount': instance.amount,
  'status': instance.status,
  'created_at': ?instance.createdAt,
  'units': ?instance.units,
  'token': ?instance.token,
};
