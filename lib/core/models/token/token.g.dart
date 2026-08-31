// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Token _$TokenFromJson(Map<String, dynamic> json) => _Token(
  type: json['type'] as String? ?? "Bearer",
  accessToken: json['access_token'] as String,
  refreshToken: json['refresh_token'] as String,
);

Map<String, dynamic> _$TokenToJson(_Token instance) => <String, dynamic>{
  'type': instance.type,
  'access_token': instance.accessToken,
  'refresh_token': instance.refreshToken,
};
