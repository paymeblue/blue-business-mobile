// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentLinkReceiptResponseImpl _$$PaymentLinkReceiptResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentLinkReceiptResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : PaymentLinkReceiptRecord.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaymentLinkReceiptResponseImplToJson(
    _$PaymentLinkReceiptResponseImpl instance) {
  final val = <String, dynamic>{
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data);
  return val;
}
