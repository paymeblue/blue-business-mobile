// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recover_phone_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SendNewPhoneResponse _$SendNewPhoneResponseFromJson(
  Map<String, dynamic> json,
) => _SendNewPhoneResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
);

Map<String, dynamic> _$SendNewPhoneResponseToJson(
  _SendNewPhoneResponse instance,
) => <String, dynamic>{'status': instance.status, 'message': ?instance.message};
