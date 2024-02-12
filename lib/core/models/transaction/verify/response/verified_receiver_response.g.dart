// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_receiver_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifiedReceiverResponseImpl _$$VerifiedReceiverResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifiedReceiverResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VerifiedReceiverData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerifiedReceiverResponseImplToJson(
        _$VerifiedReceiverResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
