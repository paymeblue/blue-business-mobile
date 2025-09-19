// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shareholders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Shareholders _$ShareholdersFromJson(Map<String, dynamic> json) =>
    _Shareholders(
      id: (json['id'] as num).toInt(),
      businessId: (json['business_id'] as num).toInt(),
      name: json['name'] as String,
      verified: json['verified'] as bool? ?? false,
      designation: json['designation'] as String? ?? "WITNESS",
      bvn: json['bvn'] as String?,
      phone: json['phone'] as String?,
      createdAt: json['created_at'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$ShareholdersToJson(_Shareholders instance) =>
    <String, dynamic>{
      'id': instance.id,
      'business_id': instance.businessId,
      'name': instance.name,
      'verified': instance.verified,
      'designation': instance.designation,
      'bvn': ?instance.bvn,
      'phone': ?instance.phone,
      'created_at': ?instance.createdAt,
      'address': ?instance.address,
    };
