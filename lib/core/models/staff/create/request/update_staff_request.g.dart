// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_staff_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateStaffRequestImpl _$$UpdateStaffRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateStaffRequestImpl(
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      role: json['role'] as String?,
      branchId: (json['branch_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UpdateStaffRequestImplToJson(
        _$UpdateStaffRequestImpl instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.phone case final value?) 'phone': value,
      if (instance.password case final value?) 'password': value,
      if (instance.role case final value?) 'role': value,
      if (instance.branchId case final value?) 'branch_id': value,
    };
