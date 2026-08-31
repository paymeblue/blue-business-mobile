// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_cable_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyCableResponse _$VerifyCableResponseFromJson(Map<String, dynamic> json) =>
    _VerifyCableResponse(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VerifyCableData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VerifyCableResponseToJson(
  _VerifyCableResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
