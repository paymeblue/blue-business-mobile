// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vend_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendDataRequestImpl _$$VendDataRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$VendDataRequestImpl(
      transactionId: json['transaction_id'] as String,
      passcode: json['passcode'] as String,
    );

Map<String, dynamic> _$$VendDataRequestImplToJson(
        _$VendDataRequestImpl instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'passcode': instance.passcode,
    };
