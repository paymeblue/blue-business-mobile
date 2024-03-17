// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefreshTokenDataImpl _$$RefreshTokenDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RefreshTokenDataImpl(
      type: json['type'] as String? ?? "Bearer",
      accessToken: json['access_token'] as String,
    );

Map<String, dynamic> _$$RefreshTokenDataImplToJson(
        _$RefreshTokenDataImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'access_token': instance.accessToken,
    };
