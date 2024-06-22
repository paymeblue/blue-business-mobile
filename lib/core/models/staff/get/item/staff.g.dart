// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StaffImpl _$$StaffImplFromJson(Map<String, dynamic> json) => _$StaffImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      branchName: json['branch_name'] as String,
      branchId: json['branch_id'] as int,
      phone: json['phone'] as String,
      displayPicture: json['display_picture'] as String?,
      role: json['role'] as String? ?? 'cashier',
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$StaffImplToJson(_$StaffImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'branch_name': instance.branchName,
    'branch_id': instance.branchId,
    'phone': instance.phone,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('display_picture', instance.displayPicture);
  val['role'] = instance.role;
  writeNotNull('created_at', instance.createdAt);
  return val;
}
