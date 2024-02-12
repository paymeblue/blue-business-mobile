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
          : WalletData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WalletResponseImplToJson(
        _$WalletResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
