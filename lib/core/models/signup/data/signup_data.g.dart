// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignupData _$SignupDataFromJson(Map<String, dynamic> json) => _SignupData(
  id: (json['id'] as num).toInt(),
  phone: json['phone'] as String,
  level: (json['level'] as num).toInt(),
  businessProfileCompleted:
      json['business_profile_completed'] as bool? ?? false,
  businessDetailsCompleted:
      json['business_details_completed'] as bool? ?? false,
  businessKycCompleted: json['business_kyc_completed'] as bool? ?? false,
  businessId: (json['business_id'] as num?)?.toInt(),
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$SignupDataToJson(_SignupData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'level': instance.level,
      'business_profile_completed': instance.businessProfileCompleted,
      'business_details_completed': instance.businessDetailsCompleted,
      'business_kyc_completed': instance.businessKycCompleted,
      'business_id': ?instance.businessId,
      'created_at': ?instance.createdAt,
    };
