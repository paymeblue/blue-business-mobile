// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recover_phone_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SendNewPhoneData _$SendNewPhoneDataFromJson(Map<String, dynamic> json) =>
    _SendNewPhoneData(
      reference: json['reference'] as String,
      newPhone: json['new_phone'] as String,
    );

Map<String, dynamic> _$SendNewPhoneDataToJson(_SendNewPhoneData instance) =>
    <String, dynamic>{
      'reference': instance.reference,
      'new_phone': instance.newPhone,
    };
