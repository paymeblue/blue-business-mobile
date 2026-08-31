// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vend_airtime_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VendAirtimeRequest _$VendAirtimeRequestFromJson(Map<String, dynamic> json) =>
    _VendAirtimeRequest(
      receiver: json['receiver'] as String,
      passcode: json['passcode'] as String,
      amount: json['amount'] as String,
      providerId: json['provider_id'] as String,
    );

Map<String, dynamic> _$VendAirtimeRequestToJson(_VendAirtimeRequest instance) =>
    <String, dynamic>{
      'receiver': instance.receiver,
      'passcode': instance.passcode,
      'amount': instance.amount,
      'provider_id': instance.providerId,
    };
