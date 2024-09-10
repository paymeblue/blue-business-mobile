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
    _$UpdateStaffRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('phone', instance.phone);
  writeNotNull('password', instance.password);
  writeNotNull('role', instance.role);
  writeNotNull('branch_id', instance.branchId);
  return val;
}
