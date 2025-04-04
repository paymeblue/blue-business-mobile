// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_cable_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyCableResponseImpl _$$VerifyCableResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyCableResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VerifyCableData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerifyCableResponseImplToJson(
        _$VerifyCableResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
