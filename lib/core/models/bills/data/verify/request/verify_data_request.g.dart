// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyDataRequest _$VerifyDataRequestFromJson(Map<String, dynamic> json) =>
    _VerifyDataRequest(
      receiver: json['receiver'] as String,
      packageId: json['package_id'] as String,
    );

Map<String, dynamic> _$VerifyDataRequestToJson(_VerifyDataRequest instance) =>
    <String, dynamic>{
      'receiver': instance.receiver,
      'package_id': instance.packageId,
    };
