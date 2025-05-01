// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_role_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetStaffRoleResponseImpl _$$GetStaffRoleResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetStaffRoleResponseImpl(
      status: json['status'] as String? ?? 'fail',
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => StaffRole.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetStaffRoleResponseImplToJson(
        _$GetStaffRoleResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
