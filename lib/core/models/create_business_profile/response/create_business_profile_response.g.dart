// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_business_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateBusinessProfileResponseImpl
    _$$CreateBusinessProfileResponseImplFromJson(Map<String, dynamic> json) =>
        _$CreateBusinessProfileResponseImpl(
          status: json['status'] as String? ?? "fail",
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : CreateBusinessProfileData.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateBusinessProfileResponseImplToJson(
        _$CreateBusinessProfileResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
