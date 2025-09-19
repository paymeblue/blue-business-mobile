// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Branch _$BranchFromJson(Map<String, dynamic> json) => _Branch(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  location: json['location'] as String,
  staffSize: json['staff_size'] as String? ?? "0",
  totalAmount: json['total_amount'] as String? ?? "0",
  businessId: (json['business_id'] as num?)?.toInt(),
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$BranchToJson(_Branch instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'location': instance.location,
  'staff_size': instance.staffSize,
  'total_amount': instance.totalAmount,
  'business_id': ?instance.businessId,
  'created_at': ?instance.createdAt,
};
