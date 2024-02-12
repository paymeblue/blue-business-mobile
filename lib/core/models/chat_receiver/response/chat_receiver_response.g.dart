// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_receiver_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatReceiverResponseImpl _$$ChatReceiverResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatReceiverResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ChatResponseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChatReceiverResponseImplToJson(
        _$ChatReceiverResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
