// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReceiptResponseImpl _$$ReceiptResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ReceiptResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ReceiptData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReceiptResponseImplToJson(
        _$ReceiptResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
