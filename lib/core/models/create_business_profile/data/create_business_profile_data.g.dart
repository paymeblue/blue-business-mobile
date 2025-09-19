// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_business_profile_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateBusinessProfileData _$CreateBusinessProfileDataFromJson(
  Map<String, dynamic> json,
) => _CreateBusinessProfileData(
  id: (json['id'] as num).toInt(),
  phone: json['phone'] as String,
  level: (json['level'] as num).toInt(),
  businessId: (json['business_id'] as num).toInt(),
  businessProfileCompleted:
      json['business_profile_completed'] as bool? ?? false,
  businessDetailsCompleted:
      json['business_details_completed'] as bool? ?? false,
  businessKycCompleted: json['business_kyc_completed'] as bool? ?? false,
  shareholders:
      (json['shareholders'] as List<dynamic>?)
          ?.map((e) => Shareholders.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$CreateBusinessProfileDataToJson(
  _CreateBusinessProfileData instance,
) => <String, dynamic>{
  'id': instance.id,
  'phone': instance.phone,
  'level': instance.level,
  'business_id': instance.businessId,
  'business_profile_completed': instance.businessProfileCompleted,
  'business_details_completed': instance.businessDetailsCompleted,
  'business_kyc_completed': instance.businessKycCompleted,
  'shareholders': instance.shareholders,
  'created_at': ?instance.createdAt,
};
