// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_business_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateBusinessProfileResponse _$CreateBusinessProfileResponseFromJson(
  Map<String, dynamic> json,
) => _CreateBusinessProfileResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : CreateBusinessProfileData.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$CreateBusinessProfileResponseToJson(
  _CreateBusinessProfileResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
