// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_link_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentLinkResponseImpl _$$PaymentLinkResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentLinkResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : PaymentLinkData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaymentLinkResponseImplToJson(
        _$PaymentLinkResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
