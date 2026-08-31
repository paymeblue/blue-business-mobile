// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_pin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangePinResponse _$ChangePinResponseFromJson(Map<String, dynamic> json) =>
    _ChangePinResponse(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ChangePinResponseToJson(_ChangePinResponse instance) =>
    <String, dynamic>{'status': instance.status, 'message': ?instance.message};
