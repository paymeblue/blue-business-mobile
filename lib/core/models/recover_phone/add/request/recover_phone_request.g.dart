// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recover_phone_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SendNewPhoneRequest _$SendNewPhoneRequestFromJson(Map<String, dynamic> json) =>
    _SendNewPhoneRequest(
      phone: json['phone'] as String,
      userId: json['user_id'] as String,
    );

Map<String, dynamic> _$SendNewPhoneRequestToJson(
  _SendNewPhoneRequest instance,
) => <String, dynamic>{'phone': instance.phone, 'user_id': instance.userId};
