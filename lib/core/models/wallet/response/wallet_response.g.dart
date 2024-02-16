// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletResponseImpl _$$WalletResponseImplFromJson(Map<String, dynamic> json) =>
    _$WalletResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : WalletData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WalletResponseImplToJson(
    _$WalletResponseImpl instance) {
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
