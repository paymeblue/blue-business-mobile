// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vend_airtime_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendAirtimeResponseImpl _$$VendAirtimeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VendAirtimeResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VendAirtimeData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VendAirtimeResponseImplToJson(
        _$VendAirtimeResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
