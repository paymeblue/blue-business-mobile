// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiate_transaction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitiateTransactionResponseImpl _$$InitiateTransactionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$InitiateTransactionResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : InitiateTransactionData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InitiateTransactionResponseImplToJson(
        _$InitiateTransactionResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
