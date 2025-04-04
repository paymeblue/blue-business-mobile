// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetProfileResponseImpl _$$GetProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetProfileResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : GetProfileData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetProfileResponseImplToJson(
        _$GetProfileResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };

_$GetProfileDataImpl _$$GetProfileDataImplFromJson(Map<String, dynamic> json) =>
    _$GetProfileDataImpl(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phone: json['phone'] as String,
      middleName: json['middle_name'] as String?,
      displayPic: json['display_pic'] as String?,
    );

Map<String, dynamic> _$$GetProfileDataImplToJson(
        _$GetProfileDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      if (instance.middleName case final value?) 'middle_name': value,
      if (instance.displayPic case final value?) 'display_pic': value,
    };
