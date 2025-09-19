// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_new_phone_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyNewPhoneRequest _$VerifyNewPhoneRequestFromJson(
  Map<String, dynamic> json,
) => _VerifyNewPhoneRequest(
  otp: json['otp'] as String,
  reference: json['reference'] as String,
);

Map<String, dynamic> _$VerifyNewPhoneRequestToJson(
  _VerifyNewPhoneRequest instance,
) => <String, dynamic>{'otp': instance.otp, 'reference': instance.reference};
