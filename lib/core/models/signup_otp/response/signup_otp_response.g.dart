// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupOtpResponseImpl _$$SignupOtpResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SignupOtpResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$SignupOtpResponseImplToJson(
    _$SignupOtpResponseImpl instance) {
  final val = <String, dynamic>{
    'success': instance.success,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  return val;
}
