// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupDataImpl _$$SignupDataImplFromJson(Map<String, dynamic> json) =>
    _$SignupDataImpl(
      id: json['id'] as int,
      phone: json['phone'] as String,
      level: json['level'] as int,
      businessProfileCompleted:
          json['business_profile_completed'] as bool? ?? false,
      businessDetailsCompleted:
          json['business_details_completed'] as bool? ?? false,
      businessKycCompleted: json['business_kyc_completed'] as bool? ?? false,
      businessId: json['business_id'] as int?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$SignupDataImplToJson(_$SignupDataImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'phone': instance.phone,
    'level': instance.level,
    'business_profile_completed': instance.businessProfileCompleted,
    'business_details_completed': instance.businessDetailsCompleted,
    'business_kyc_completed': instance.businessKycCompleted,
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
