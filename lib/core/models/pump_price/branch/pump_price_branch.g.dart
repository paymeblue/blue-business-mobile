// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pump_price_branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePumpPriceBranchRequestImpl _$$CreatePumpPriceBranchRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePumpPriceBranchRequestImpl(
      name: json['name'] as String,
      businessId: (json['businessId'] as num).toInt(),
      address: json['address'] as String,
      fuelPrice: (json['fuelPrice'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      opening: json['opening'] as String,
      closing: json['closing'] as String,
    );

Map<String, dynamic> _$$CreatePumpPriceBranchRequestImplToJson(
        _$CreatePumpPriceBranchRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'businessId': instance.businessId,
      'address': instance.address,
      'fuelPrice': instance.fuelPrice,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'opening': instance.opening,
      'closing': instance.closing,
    };

_$CreatePumpPriceBranchResponseImpl
    _$$CreatePumpPriceBranchResponseImplFromJson(Map<String, dynamic> json) =>
        _$CreatePumpPriceBranchResponseImpl(
          message: json['message'] as String? ?? '',
          status: json['status'] as String? ?? 'fail',
          data: json['data'] == null
              ? null
              : FillingStation.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreatePumpPriceBranchResponseImplToJson(
        _$CreatePumpPriceBranchResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      if (instance.data case final value?) 'data': value,
    };

_$GetFillingStationsResponseImpl _$$GetFillingStationsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetFillingStationsResponseImpl(
      message: json['message'] as String? ?? '',
      status: json['status'] as String? ?? 'fail',
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => FillingStation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GetFillingStationsResponseImplToJson(
        _$GetFillingStationsResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$FillingStationImpl _$$FillingStationImplFromJson(Map<String, dynamic> json) =>
    _$FillingStationImpl(
      id: json['id'] as String,
      branchId: json['branchId'] as String,
      name: json['name'] as String,
      fuelPrice: json['fuelPrice'] as String,
      opening: json['opening'] as String,
      closing: json['closing'] as String,
      longitude: json['longitude'] as String,
      latitude: json['latitude'] as String,
      address: json['address'] as String,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      businessId: json['businessId'] as String?,
    );

Map<String, dynamic> _$$FillingStationImplToJson(
        _$FillingStationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'branchId': instance.branchId,
      'name': instance.name,
      'fuelPrice': instance.fuelPrice,
      'opening': instance.opening,
      'closing': instance.closing,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'address': instance.address,
      if (instance.createdAt case final value?) 'createdAt': value,
      if (instance.updatedAt case final value?) 'updatedAt': value,
      if (instance.businessId case final value?) 'businessId': value,
    };
