// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Staff _$StaffFromJson(Map<String, dynamic> json) => _Staff(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  branchName: json['branch_name'] as String?,
  branchId: (json['branch_id'] as num?)?.toInt(),
  phone: json['phone'] as String,
  displayPicture: json['display_picture'] as String?,
  role: json['role'] as String? ?? 'cashier',
);

Map<String, dynamic> _$StaffToJson(_Staff instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'branch_name': ?instance.branchName,
  'branch_id': ?instance.branchId,
  'phone': instance.phone,
  'display_picture': ?instance.displayPicture,
  'role': instance.role,
};
