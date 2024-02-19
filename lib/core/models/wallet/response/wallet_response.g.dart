// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletResponseImpl _$$WalletResponseImplFromJson(Map<String, dynamic> json) =>
    _$WalletResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Wallet.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WalletResponseImplToJson(
    _$WalletResponseImpl instance) {
  final val = <String, dynamic>{
    'status': instance.status,
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
