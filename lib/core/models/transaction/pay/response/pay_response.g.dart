// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayResponseImpl _$$PayResponseImplFromJson(Map<String, dynamic> json) =>
    _$PayResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : PayData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PayResponseImplToJson(_$PayResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
