// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recover_phone_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendPhoneRecoverPinRequestImpl _$$SendPhoneRecoverPinRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SendPhoneRecoverPinRequestImpl(
      phone: json['phone'] as String,
      validationMode: json['validation_mode'] as String? ?? "recovery-phone",
    );

Map<String, dynamic> _$$SendPhoneRecoverPinRequestImplToJson(
        _$SendPhoneRecoverPinRequestImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'validation_mode': instance.validationMode,
    };
