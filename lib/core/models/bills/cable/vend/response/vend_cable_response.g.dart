// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vend_cable_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VendCableResponse _$VendCableResponseFromJson(Map<String, dynamic> json) =>
    _VendCableResponse(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VendCableData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendCableResponseToJson(_VendCableResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': ?instance.message,
      'data': ?instance.data,
    };
