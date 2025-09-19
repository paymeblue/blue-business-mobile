// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_cable_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyCableRequest _$VerifyCableRequestFromJson(Map<String, dynamic> json) =>
    _VerifyCableRequest(
      receiver: json['receiver'] as String,
      packageId: json['package_id'] as String,
    );

Map<String, dynamic> _$VerifyCableRequestToJson(_VerifyCableRequest instance) =>
    <String, dynamic>{
      'receiver': instance.receiver,
      'package_id': instance.packageId,
    };
