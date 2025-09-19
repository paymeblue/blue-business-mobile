// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiate_transaction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InitiateTransactionResponse _$InitiateTransactionResponseFromJson(
  Map<String, dynamic> json,
) => _InitiateTransactionResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : InitiateTransactionData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$InitiateTransactionResponseToJson(
  _InitiateTransactionResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
