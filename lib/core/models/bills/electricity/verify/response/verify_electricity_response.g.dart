// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_electricity_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyElectricityResponse _$VerifyElectricityResponseFromJson(
  Map<String, dynamic> json,
) => _VerifyElectricityResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : VerifyElectricityData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$VerifyElectricityResponseToJson(
  _VerifyElectricityResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
