// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_electricity_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyElectricityResponseImpl _$$VerifyElectricityResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyElectricityResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VerifyElectricityData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerifyElectricityResponseImplToJson(
        _$VerifyElectricityResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
