// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shareholders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShareholdersImpl _$$ShareholdersImplFromJson(Map<String, dynamic> json) =>
    _$ShareholdersImpl(
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

Map<String, dynamic> _$$ShareholdersImplToJson(_$ShareholdersImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'business_id': instance.businessId,
      'name': instance.name,
      'verified': instance.verified,
      'designation': instance.designation,
      if (instance.bvn case final value?) 'bvn': value,
      if (instance.phone case final value?) 'phone': value,
      if (instance.createdAt case final value?) 'created_at': value,
      if (instance.address case final value?) 'address': value,
    };
