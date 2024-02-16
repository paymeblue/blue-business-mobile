// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefreshTokenResponseImpl _$$RefreshTokenResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RefreshTokenResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : RefreshTokenData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RefreshTokenResponseImplToJson(
    _$RefreshTokenResponseImpl instance) {
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
