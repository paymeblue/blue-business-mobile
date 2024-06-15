// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_electricity_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyElectricityDataImpl _$$VerifyElectricityDataImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyElectricityDataImpl(
      transactionId: json['transaction_id'] as String,
      customerName: json['customer_name'] as String,
      customerInfo: json['customer_info'] as String,
      receiver: json['receiver'] as String,
      provider: json['provider'] as String,
      meterType: json['meter_type'] as String,
      serviceCharge: json['service_charge'] as int? ?? 100,
      minimumAmount: json['minimum_amount'] as String? ?? "0.0",
      status: json['status'] as String? ?? "pending",
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$VerifyElectricityDataImplToJson(
    _$VerifyElectricityDataImpl instance) {
  final val = <String, dynamic>{
    'transaction_id': instance.transactionId,
    'customer_name': instance.customerName,
    'customer_info': instance.customerInfo,
    'receiver': instance.receiver,
    'provider': instance.provider,
    'meter_type': instance.meterType,
    'service_charge': instance.serviceCharge,
    'minimum_amount': instance.minimumAmount,
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created_at', instance.createdAt);
  return val;
}
