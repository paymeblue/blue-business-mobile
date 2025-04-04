// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_staff_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateStaffResponseImpl _$$CreateStaffResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateStaffResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$CreateStaffResponseImplToJson(
        _$CreateStaffResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
    };
