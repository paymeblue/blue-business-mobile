// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_pin_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangePinRequestImpl _$$ChangePinRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePinRequestImpl(
      oldPin: json['oldPin'] as String,
      newPin: json['newPin'] as String,
      confirmPin: json['confirmPin'] as String,
    );

Map<String, dynamic> _$$ChangePinRequestImplToJson(
        _$ChangePinRequestImpl instance) =>
    <String, dynamic>{
      'oldPin': instance.oldPin,
      'newPin': instance.newPin,
      'confirmPin': instance.confirmPin,
    };
