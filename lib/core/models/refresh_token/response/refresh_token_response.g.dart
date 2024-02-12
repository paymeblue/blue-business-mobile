// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefreshTokenResponseImpl _$$RefreshTokenResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RefreshTokenResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : RefreshTokenData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RefreshTokenResponseImplToJson(
        _$RefreshTokenResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
