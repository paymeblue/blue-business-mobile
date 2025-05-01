// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vend_electricity_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendElectricityResponseImpl _$$VendElectricityResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VendElectricityResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VendElectricityData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VendElectricityResponseImplToJson(
        _$VendElectricityResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
