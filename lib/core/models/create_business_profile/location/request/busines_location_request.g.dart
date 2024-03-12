// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'busines_location_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessLocationRequestImpl _$$BusinessLocationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessLocationRequestImpl(
      address: json['address'] as String,
      lga: json['lga'] as String,
      state: json['state'] as String,
      city: json['city'] as String,
    );

Map<String, dynamic> _$$BusinessLocationRequestImplToJson(
        _$BusinessLocationRequestImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'lga': instance.lga,
      'state': instance.state,
      'city': instance.city,
    };
