// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TopupResponse _$TopupResponseFromJson(Map<String, dynamic> json) =>
    _TopupResponse(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : TopupAccount.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TopupResponseToJson(_TopupResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': ?instance.message,
      'data': ?instance.data,
    };
