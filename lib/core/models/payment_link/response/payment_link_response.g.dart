// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_link_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentLinkResponse _$PaymentLinkResponseFromJson(Map<String, dynamic> json) =>
    _PaymentLinkResponse(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : PaymentLinkData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentLinkResponseToJson(
  _PaymentLinkResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
