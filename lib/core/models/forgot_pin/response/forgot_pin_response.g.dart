// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_pin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForgotPinResponseImpl _$$ForgotPinResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgotPinResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ForgotPinData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ForgotPinResponseImplToJson(
    _$ForgotPinResponseImpl instance) {
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
