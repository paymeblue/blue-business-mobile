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
          : TopupAccountData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TopupResponseImplToJson(_$TopupResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
