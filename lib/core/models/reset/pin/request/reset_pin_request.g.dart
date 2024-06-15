// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_pin_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResetPinRequestImpl _$$ResetPinRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetPinRequestImpl(
      phone: json['phone'] as String,
      newPin: json['new_pin'] as String,
    );

Map<String, dynamic> _$$ResetPinRequestImplToJson(
        _$ResetPinRequestImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'new_pin': instance.newPin,
    };
