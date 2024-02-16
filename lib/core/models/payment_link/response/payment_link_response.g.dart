// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_link_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentLinkResponseImpl _$$PaymentLinkResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentLinkResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : PaymentLinkData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaymentLinkResponseImplToJson(
    _$PaymentLinkResponseImpl instance) {
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
