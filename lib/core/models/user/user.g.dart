// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as int,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phone: json['phone'] as String,
      notificationStatus: json['notification_status'] as int? ?? 0,
      middleName: json['middle_name'] as String?,
      displayPic: json['display_pic'] as String?,
      type: json['type'] as String? ?? "business",
      businessProfileLevel: json['business_profile_level'] as int? ?? 0,
      businessProfileId: json['business_profile_id'] as int,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'first_name': instance.firstName,
    'last_name': instance.lastName,
    'phone': instance.phone,
    'notification_status': instance.notificationStatus,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('middle_name', instance.middleName);
  writeNotNull('display_pic', instance.displayPic);
  val['type'] = instance.type;
  val['business_profile_level'] = instance.businessProfileLevel;
  val['business_profile_id'] = instance.businessProfileId;
  return val;
}
