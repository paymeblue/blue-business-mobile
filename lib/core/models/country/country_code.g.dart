// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryCodeImpl _$$CountryCodeImplFromJson(Map<String, dynamic> json) =>
    _$CountryCodeImpl(
      countryCode: json['country_code'] as String,
      name: json['name'] as String,
      dialCode: json['dial_code'] as String,
    );

Map<String, dynamic> _$$CountryCodeImplToJson(_$CountryCodeImpl instance) =>
    <String, dynamic>{
      'country_code': instance.countryCode,
      'name': instance.name,
      'dial_code': instance.dialCode,
    };
