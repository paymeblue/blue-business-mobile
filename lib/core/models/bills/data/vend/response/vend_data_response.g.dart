// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vend_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendDataResponseImpl _$$VendDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VendDataResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VendDataData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VendDataResponseImplToJson(
        _$VendDataResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
