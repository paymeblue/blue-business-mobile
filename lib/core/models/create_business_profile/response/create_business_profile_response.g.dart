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
    _$CreateBusinessProfileResponseImpl instance) {
  final val = <String, dynamic>{
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data);
  return val;
}
