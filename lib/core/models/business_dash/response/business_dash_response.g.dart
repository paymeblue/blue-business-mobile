// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_dash_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BusinessDashResponse _$BusinessDashResponseFromJson(
  Map<String, dynamic> json,
) => _BusinessDashResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : BusinessDashData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BusinessDashResponseToJson(
  _BusinessDashResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
