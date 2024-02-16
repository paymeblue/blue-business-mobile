// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_receiver_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifiedReceiverResponseImpl _$$VerifiedReceiverResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifiedReceiverResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VerifiedReceiverData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerifiedReceiverResponseImplToJson(
    _$VerifiedReceiverResponseImpl instance) {
  final val = <String, dynamic>{
    'success': instance.success,
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
