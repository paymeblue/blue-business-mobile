// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vend_cable_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendCableResponseImpl _$$VendCableResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VendCableResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VendCableData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VendCableResponseImplToJson(
        _$VendCableResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
