// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_role_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetStaffRoleResponse _$GetStaffRoleResponseFromJson(
  Map<String, dynamic> json,
) => _GetStaffRoleResponse(
  status: json['status'] as String? ?? 'fail',
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => StaffRole.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetStaffRoleResponseToJson(
  _GetStaffRoleResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
