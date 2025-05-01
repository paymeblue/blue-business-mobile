// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'electricity_beneficiary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ElectricityBeneficiaryImpl _$$ElectricityBeneficiaryImplFromJson(
        Map<String, dynamic> json) =>
    _$ElectricityBeneficiaryImpl(
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

Map<String, dynamic> _$$ElectricityBeneficiaryImplToJson(
        _$ElectricityBeneficiaryImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      'receiver': instance.receiver,
      'meter_type': instance.meterType,
      'provider_id': instance.providerId,
      'customer_name': instance.customerName,
      'customer_info': instance.customerInfo,
      'provider': instance.provider,
      'service_charge': instance.serviceCharge,
      'minimum_amount': instance.minimumAmount,
      'state': instance.state,
      if (instance.tag case final value?) 'tag': value,
      'is_online': instance.isOnline,
    };
