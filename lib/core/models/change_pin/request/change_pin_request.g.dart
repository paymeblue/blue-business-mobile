// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_pin_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangePinRequest _$ChangePinRequestFromJson(Map<String, dynamic> json) =>
    _ChangePinRequest(
      oldPin: json['old_pin'] as String,
      newPin: json['new_pin'] as String,
      confirmPin: json['confirm_pin'] as String,
    );

Map<String, dynamic> _$ChangePinRequestToJson(_ChangePinRequest instance) =>
    <String, dynamic>{
      'old_pin': instance.oldPin,
      'new_pin': instance.newPin,
      'confirm_pin': instance.confirmPin,
    };
