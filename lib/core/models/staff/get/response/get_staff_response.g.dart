// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_staff_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetStaffResponse _$GetStaffResponseFromJson(Map<String, dynamic> json) =>
    _GetStaffResponse(
      status: json['status'] as String? ?? "fail",
      data: json['data'] == null
          ? null
          : GetStaffData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$GetStaffResponseToJson(_GetStaffResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': ?instance.data,
      'message': ?instance.message,
    };
