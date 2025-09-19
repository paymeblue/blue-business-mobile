// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'electricity_beneficiary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ElectricityBeneficiary _$ElectricityBeneficiaryFromJson(
  Map<String, dynamic> json,
) => _ElectricityBeneficiary(
  id: (json['id'] as num?)?.toInt(),
  receiver: json['receiver'] as String,
  meterType: json['meter_type'] as String,
  providerId: (json['provider_id'] as num).toInt(),
  customerName: json['customer_name'] as String,
  customerInfo: json['customer_info'] as String,
  provider: json['provider'] as String,
  serviceCharge: json['service_charge'] as String? ?? "100",
  minimumAmount: json['minimum_amount'] as String? ?? "0.0",
  state: json['state'] as String,
  tag: json['tag'] as String?,
  isOnline: json['is_online'] as String? ?? "false",
);

Map<String, dynamic> _$ElectricityBeneficiaryToJson(
  _ElectricityBeneficiary instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'receiver': instance.receiver,
  'meter_type': instance.meterType,
  'provider_id': instance.providerId,
  'customer_name': instance.customerName,
  'customer_info': instance.customerInfo,
  'provider': instance.provider,
  'service_charge': instance.serviceCharge,
  'minimum_amount': instance.minimumAmount,
  'state': instance.state,
  'tag': ?instance.tag,
  'is_online': instance.isOnline,
};
