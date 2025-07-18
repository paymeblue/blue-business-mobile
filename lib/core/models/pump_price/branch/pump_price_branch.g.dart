// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pump_price_branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePumpPriceBranchRequestImpl _$$CreatePumpPriceBranchRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePumpPriceBranchRequestImpl(
      name: json['name'] as String,
      businessId: (json['business_id'] as num).toInt(),
      address: json['address'] as String,
      fuelPrice: (json['fuel_price'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      opening: json['opening'] as String,
      closing: json['closing'] as String,
    );

Map<String, dynamic> _$$CreatePumpPriceBranchRequestImplToJson(
        _$CreatePumpPriceBranchRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'business_id': instance.businessId,
      'address': instance.address,
      'fuel_price': instance.fuelPrice,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'opening': instance.opening,
      'closing': instance.closing,
    };

_$CreatePumpPriceBranchResponseImpl
    _$$CreatePumpPriceBranchResponseImplFromJson(Map<String, dynamic> json) =>
        _$CreatePumpPriceBranchResponseImpl(
          message: json['message'] as String? ?? '',
          statusCode: (json['status_code'] as num).toInt(),
          error: json['error'] as String?,
          data: json['data'],
        );

Map<String, dynamic> _$$CreatePumpPriceBranchResponseImplToJson(
        _$CreatePumpPriceBranchResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status_code': instance.statusCode,
      if (instance.error case final value?) 'error': value,
      if (instance.data case final value?) 'data': value,
    };
