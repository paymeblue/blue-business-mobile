// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vend_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VendDataRequest _$VendDataRequestFromJson(Map<String, dynamic> json) =>
    _VendDataRequest(
      transactionId: json['transaction_id'] as String,
      passcode: json['passcode'] as String,
    );

Map<String, dynamic> _$VendDataRequestToJson(_VendDataRequest instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'passcode': instance.passcode,
    };
