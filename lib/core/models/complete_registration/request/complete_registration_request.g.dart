// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_registration_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompleteRegistrationRequestImpl _$$CompleteRegistrationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CompleteRegistrationRequestImpl(
      userId: json['user_id'] as int,
      pin: json['pin'] as String,
    );

Map<String, dynamic> _$$CompleteRegistrationRequestImplToJson(
        _$CompleteRegistrationRequestImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'pin': instance.pin,
    };
