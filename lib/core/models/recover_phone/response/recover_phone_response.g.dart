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
    );

Map<String, dynamic> _$$SendNewPhoneResponseImplToJson(
        _$SendNewPhoneResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
