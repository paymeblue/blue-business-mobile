// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyDataResponse _$VerifyDataResponseFromJson(Map<String, dynamic> json) =>
    _VerifyDataResponse(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VerifyDataData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VerifyDataResponseToJson(_VerifyDataResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': ?instance.message,
      'data': ?instance.data,
    };
