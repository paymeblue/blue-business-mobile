// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_electricity_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyElectricityRequestImpl _$$VerifyElectricityRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyElectricityRequestImpl(
      receiver: json['receiver'] as String,
      meterType: json['meter_type'] as String,
      providerId: json['provider_id'] as String,
    );

Map<String, dynamic> _$$VerifyElectricityRequestImplToJson(
        _$VerifyElectricityRequestImpl instance) =>
    <String, dynamic>{
      'receiver': instance.receiver,
      'meter_type': instance.meterType,
      'provider_id': instance.providerId,
    };
