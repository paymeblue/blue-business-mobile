// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangePasswordResponse _$ChangePasswordResponseFromJson(
  Map<String, dynamic> json,
) => _ChangePasswordResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
);

Map<String, dynamic> _$ChangePasswordResponseToJson(
  _ChangePasswordResponse instance,
) => <String, dynamic>{'status': instance.status, 'message': ?instance.message};
