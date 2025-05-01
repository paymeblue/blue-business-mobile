// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_new_phone_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyNewPhoneResponseImpl _$$VerifyNewPhoneResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyNewPhoneResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$VerifyNewPhoneResponseImplToJson(
        _$VerifyNewPhoneResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
    };
