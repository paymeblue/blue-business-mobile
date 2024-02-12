// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_pin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangePinResponseImpl _$$ChangePinResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePinResponseImpl(
      status: json['status'] as String? ?? 'fail',
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ChangePinResponseImplToJson(
        _$ChangePinResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
