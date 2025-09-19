// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_receiver_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifiedReceiverResponse _$VerifiedReceiverResponseFromJson(
  Map<String, dynamic> json,
) => _VerifiedReceiverResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : VerifiedReceiver.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$VerifiedReceiverResponseToJson(
  _VerifiedReceiverResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
