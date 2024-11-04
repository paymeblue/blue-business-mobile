// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blue_beneficiary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlueBeneficiaryImpl _$$BlueBeneficiaryImplFromJson(
        Map<String, dynamic> json) =>
    _$BlueBeneficiaryImpl(
      id: (json['id'] as num).toInt(),
      identifier: json['identifier'] as String? ?? "",
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$$BlueBeneficiaryImplToJson(
        _$BlueBeneficiaryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifier': instance.identifier,
      'name': instance.name,
    };
