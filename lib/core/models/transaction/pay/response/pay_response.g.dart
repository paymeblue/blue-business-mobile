// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PayResponse _$PayResponseFromJson(Map<String, dynamic> json) => _PayResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : PayData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PayResponseToJson(_PayResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': ?instance.message,
      'data': ?instance.data,
    };
