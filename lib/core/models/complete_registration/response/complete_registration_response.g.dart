// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_registration_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompleteRegistrationResponse _$CompleteRegistrationResponseFromJson(
  Map<String, dynamic> json,
) => _CompleteRegistrationResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
);

Map<String, dynamic> _$CompleteRegistrationResponseToJson(
  _CompleteRegistrationResponse instance,
) => <String, dynamic>{'status': instance.status, 'message': ?instance.message};
