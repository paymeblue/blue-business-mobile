// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_new_phone_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyNewPhoneResponse _$VerifyNewPhoneResponseFromJson(
  Map<String, dynamic> json,
) => _VerifyNewPhoneResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
);

Map<String, dynamic> _$VerifyNewPhoneResponseToJson(
  _VerifyNewPhoneResponse instance,
) => <String, dynamic>{'status': instance.status, 'message': ?instance.message};
