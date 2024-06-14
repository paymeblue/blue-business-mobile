// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_registration_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompleteRegistrationResponseImpl _$$CompleteRegistrationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CompleteRegistrationResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$CompleteRegistrationResponseImplToJson(
    _$CompleteRegistrationResponseImpl instance) {
  final val = <String, dynamic>{
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  return val;
}
