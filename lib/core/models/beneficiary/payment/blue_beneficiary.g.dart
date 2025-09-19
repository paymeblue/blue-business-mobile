// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blue_beneficiary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BlueBeneficiary _$BlueBeneficiaryFromJson(Map<String, dynamic> json) =>
    _BlueBeneficiary(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      identifier: json['identifier'] as String,
    );

Map<String, dynamic> _$BlueBeneficiaryToJson(_BlueBeneficiary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'identifier': instance.identifier,
    };
