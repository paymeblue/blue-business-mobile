// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recover_phone_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendNewPhoneResponseImpl _$$SendNewPhoneResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SendNewPhoneResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SendNewPhoneData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SendNewPhoneResponseImplToJson(
        _$SendNewPhoneResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
