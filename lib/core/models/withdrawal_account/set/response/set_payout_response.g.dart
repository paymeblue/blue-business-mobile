// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_payout_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetPayoutResponseImpl _$$SetPayoutResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SetPayoutResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SetPayoutData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SetPayoutResponseImplToJson(
    _$SetPayoutResponseImpl instance) {
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
