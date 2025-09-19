// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vend_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VendDataResponse _$VendDataResponseFromJson(Map<String, dynamic> json) =>
    _VendDataResponse(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VendDataData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendDataResponseToJson(_VendDataResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': ?instance.message,
      'data': ?instance.data,
    };
