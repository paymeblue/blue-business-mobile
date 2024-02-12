// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blue_beneficiary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlueBeneficiaryImpl _$$BlueBeneficiaryImplFromJson(
        Map<String, dynamic> json) =>
    _$BlueBeneficiaryImpl(
      id: json['id'] as int,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      identifier: json['identifier'] as String,
    );

Map<String, dynamic> _$$BlueBeneficiaryImplToJson(
        _$BlueBeneficiaryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'identifier': instance.identifier,
    };
