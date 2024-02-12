// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupProfileResponseImpl _$$SignupProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SignupProfileResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$SignupProfileResponseImplToJson(
        _$SignupProfileResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
