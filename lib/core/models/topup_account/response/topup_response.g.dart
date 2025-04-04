// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopupResponseImpl _$$TopupResponseImplFromJson(Map<String, dynamic> json) =>
    _$TopupResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : TopupAccount.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TopupResponseImplToJson(_$TopupResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
