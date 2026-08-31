// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_data_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyDataData _$VerifyDataDataFromJson(Map<String, dynamic> json) =>
    _VerifyDataData(
      transactionId: json['transaction_id'] as String,
      receiver: json['receiver'] as String,
      provider: json['provider'] as String,
      package: json['package'] as String,
      amount: json['amount'] as String? ?? "0.0",
      status: json['status'] as String? ?? "pending",
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$VerifyDataDataToJson(_VerifyDataData instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'receiver': instance.receiver,
      'provider': instance.provider,
      'package': instance.package,
      'amount': instance.amount,
      'status': instance.status,
      'created_at': ?instance.createdAt,
    };
