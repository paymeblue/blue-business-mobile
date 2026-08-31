// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vend_cable_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VendCableRequest _$VendCableRequestFromJson(Map<String, dynamic> json) =>
    _VendCableRequest(
      transactionId: json['transaction_id'] as String,
      passcode: json['passcode'] as String,
    );

Map<String, dynamic> _$VendCableRequestToJson(_VendCableRequest instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'passcode': instance.passcode,
    };
