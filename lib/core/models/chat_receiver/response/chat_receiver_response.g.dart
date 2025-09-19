// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_receiver_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatReceiverResponse _$ChatReceiverResponseFromJson(
  Map<String, dynamic> json,
) => _ChatReceiverResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ChatResponseData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ChatReceiverResponseToJson(
  _ChatReceiverResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
