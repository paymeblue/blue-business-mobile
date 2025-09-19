// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recovery_phone_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SetRecoveryPhoneRequest _$SetRecoveryPhoneRequestFromJson(
  Map<String, dynamic> json,
) => _SetRecoveryPhoneRequest(
  phone: json['phone'] as String,
  password: json['password'] as String,
);

Map<String, dynamic> _$SetRecoveryPhoneRequestToJson(
  _SetRecoveryPhoneRequest instance,
) => <String, dynamic>{'phone': instance.phone, 'password': instance.password};
