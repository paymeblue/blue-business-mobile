// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StaffImpl _$$StaffImplFromJson(Map<String, dynamic> json) => _$StaffImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      branchName: json['branch_name'] as String?,
      branchId: (json['branch_id'] as num?)?.toInt(),
      phone: json['phone'] as String,
      displayPicture: json['display_picture'] as String?,
      role: json['role'] as String? ?? 'cashier',
    );

Map<String, dynamic> _$$StaffImplToJson(_$StaffImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      if (instance.branchName case final value?) 'branch_name': value,
      if (instance.branchId case final value?) 'branch_id': value,
      'phone': instance.phone,
      if (instance.displayPicture case final value?) 'display_picture': value,
      'role': instance.role,
    };
