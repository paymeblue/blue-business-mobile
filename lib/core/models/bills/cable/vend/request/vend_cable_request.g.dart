// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vend_cable_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendCableRequestImpl _$$VendCableRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$VendCableRequestImpl(
      transactionId: json['transaction_id'] as String,
      passcode: json['passcode'] as String,
    );

Map<String, dynamic> _$$VendCableRequestImplToJson(
        _$VendCableRequestImpl instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'passcode': instance.passcode,
    };
