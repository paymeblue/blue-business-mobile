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
    _$GetStaffRoleResponseImpl instance) {
  final val = <String, dynamic>{
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data);
  return val;
}
