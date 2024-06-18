// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BranchImpl _$$BranchImplFromJson(Map<String, dynamic> json) => _$BranchImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      location: json['location'] as String,
      staffSize: json['staff_size'] as String? ?? "0",
      businessId: json['business_id'] as int?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$BranchImplToJson(_$BranchImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'location': instance.location,
    'staff_size': instance.staffSize,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('business_id', instance.businessId);
  writeNotNull('created_at', instance.createdAt);
  return val;
}
