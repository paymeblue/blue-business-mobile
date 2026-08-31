// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vend_airtime_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VendAirtimeResponse _$VendAirtimeResponseFromJson(Map<String, dynamic> json) =>
    _VendAirtimeResponse(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VendAirtimeData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendAirtimeResponseToJson(
  _VendAirtimeResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
