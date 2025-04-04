// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BranchImpl _$$BranchImplFromJson(Map<String, dynamic> json) => _$BranchImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      location: json['location'] as String,
      staffSize: json['staff_size'] as String? ?? "0",
      totalAmount: json['total_amount'] as String? ?? "0",
      businessId: (json['business_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$BranchImplToJson(_$BranchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'staff_size': instance.staffSize,
      'total_amount': instance.totalAmount,
      if (instance.businessId case final value?) 'business_id': value,
      if (instance.createdAt case final value?) 'created_at': value,
    };
