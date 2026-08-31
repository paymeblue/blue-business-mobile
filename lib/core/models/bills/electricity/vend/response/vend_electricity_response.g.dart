// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vend_electricity_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VendElectricityResponse _$VendElectricityResponseFromJson(
  Map<String, dynamic> json,
) => _VendElectricityResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : VendElectricityData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$VendElectricityResponseToJson(
  _VendElectricityResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
