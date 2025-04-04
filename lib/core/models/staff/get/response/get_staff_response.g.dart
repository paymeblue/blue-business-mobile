// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_staff_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetStaffResponseImpl _$$GetStaffResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetStaffResponseImpl(
      status: json['status'] as String? ?? "fail",
      data: json['data'] == null
          ? null
          : GetStaffData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$GetStaffResponseImplToJson(
        _$GetStaffResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.data case final value?) 'data': value,
      if (instance.message case final value?) 'message': value,
    };
