// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_staff_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateStaffRequest _$UpdateStaffRequestFromJson(Map<String, dynamic> json) =>
    _UpdateStaffRequest(
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      role: json['role'] as String?,
      branchId: (json['branch_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UpdateStaffRequestToJson(_UpdateStaffRequest instance) =>
    <String, dynamic>{
      'name': ?instance.name,
      'phone': ?instance.phone,
      'password': ?instance.password,
      'role': ?instance.role,
      'branch_id': ?instance.branchId,
    };
