// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_registration_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompleteRegistrationResponseImpl _$$CompleteRegistrationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CompleteRegistrationResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$CompleteRegistrationResponseImplToJson(
        _$CompleteRegistrationResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
    };
