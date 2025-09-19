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
  data: json['data'] == null
      ? null
      : SendNewPhoneData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SendNewPhoneResponseToJson(
  _SendNewPhoneResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
