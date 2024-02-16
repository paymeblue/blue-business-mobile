// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefreshTokenDataImpl _$$RefreshTokenDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RefreshTokenDataImpl(
      type: json['type'] as String? ?? "Bearer",
      accessToken: json['accessToken'] as String,
    );

Map<String, dynamic> _$$RefreshTokenDataImplToJson(
        _$RefreshTokenDataImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'accessToken': instance.accessToken,
    };
