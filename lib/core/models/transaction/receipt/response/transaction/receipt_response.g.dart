// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReceiptResponse _$ReceiptResponseFromJson(Map<String, dynamic> json) =>
    _ReceiptResponse(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ReceiptData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReceiptResponseToJson(_ReceiptResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': ?instance.message,
      'data': ?instance.data,
    };
