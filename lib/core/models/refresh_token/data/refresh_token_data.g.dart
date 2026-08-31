// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RefreshTokenData _$RefreshTokenDataFromJson(Map<String, dynamic> json) =>
    _RefreshTokenData(
      type: json['type'] as String? ?? "Bearer",
      accessToken: json['access_token'] as String,
    );

Map<String, dynamic> _$RefreshTokenDataToJson(_RefreshTokenData instance) =>
    <String, dynamic>{
      'type': instance.type,
      'access_token': instance.accessToken,
    };
