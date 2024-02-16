// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_payout_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyPayoutResponseImpl _$$VerifyPayoutResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyPayoutResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VerifyPayoutData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerifyPayoutResponseImplToJson(
    _$VerifyPayoutResponseImpl instance) {
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
