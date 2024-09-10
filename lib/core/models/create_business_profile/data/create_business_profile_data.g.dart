// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_business_profile_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateBusinessProfileDataImpl _$$CreateBusinessProfileDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateBusinessProfileDataImpl(
      id: (json['id'] as num).toInt(),
      phone: json['phone'] as String,
      level: (json['level'] as num).toInt(),
      businessId: (json['business_id'] as num).toInt(),
      businessProfileCompleted:
          json['business_profile_completed'] as bool? ?? false,
      businessDetailsCompleted:
          json['business_details_completed'] as bool? ?? false,
      businessKycCompleted: json['business_kyc_completed'] as bool? ?? false,
      shareholders: (json['shareholders'] as List<dynamic>?)
              ?.map((e) => Shareholders.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$CreateBusinessProfileDataImplToJson(
    _$CreateBusinessProfileDataImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'phone': instance.phone,
    'level': instance.level,
    'business_id': instance.businessId,
    'business_profile_completed': instance.businessProfileCompleted,
    'business_details_completed': instance.businessDetailsCompleted,
    'business_kyc_completed': instance.businessKycCompleted,
    'shareholders': instance.shareholders,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created_at', instance.createdAt);
  return val;
}
