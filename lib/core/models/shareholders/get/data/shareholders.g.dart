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

Map<String, dynamic> _$$ShareholdersImplToJson(_$ShareholdersImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'business_id': instance.businessId,
    'name': instance.name,
    'verified': instance.verified,
    'designation': instance.designation,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bvn', instance.bvn);
  writeNotNull('phone', instance.phone);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('address', instance.address);
  return val;
}
