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
    _$ChatReceiverResponseImpl instance) {
  final val = <String, dynamic>{
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data);
  return val;
}
