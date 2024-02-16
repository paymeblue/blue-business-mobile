// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentLinkReceiptResponseImpl _$$PaymentLinkReceiptResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentLinkReceiptResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : PaymentLinkReceiptRecord.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaymentLinkReceiptResponseImplToJson(
    _$PaymentLinkReceiptResponseImpl instance) {
  final val = <String, dynamic>{
    'success': instance.success,
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
