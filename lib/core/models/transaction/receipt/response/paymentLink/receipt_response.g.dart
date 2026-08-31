// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentLinkReceiptResponse _$PaymentLinkReceiptResponseFromJson(
  Map<String, dynamic> json,
) => _PaymentLinkReceiptResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : PaymentLinkReceiptRecord.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PaymentLinkReceiptResponseToJson(
  _PaymentLinkReceiptResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
