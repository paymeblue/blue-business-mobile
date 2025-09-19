// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CountryCode _$CountryCodeFromJson(Map<String, dynamic> json) => _CountryCode(
  countryCode: json['country_code'] as String,
  name: json['name'] as String,
  dialCode: json['dial_code'] as String,
);

Map<String, dynamic> _$CountryCodeToJson(_CountryCode instance) =>
    <String, dynamic>{
      'country_code': instance.countryCode,
      'name': instance.name,
      'dial_code': instance.dialCode,
    };
