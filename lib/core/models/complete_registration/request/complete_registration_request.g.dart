// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_registration_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompleteRegistrationRequest _$CompleteRegistrationRequestFromJson(
  Map<String, dynamic> json,
) => _CompleteRegistrationRequest(
  userId: (json['user_id'] as num).toInt(),
  pin: json['pin'] as String,
);

Map<String, dynamic> _$CompleteRegistrationRequestToJson(
  _CompleteRegistrationRequest instance,
) => <String, dynamic>{'user_id': instance.userId, 'pin': instance.pin};
