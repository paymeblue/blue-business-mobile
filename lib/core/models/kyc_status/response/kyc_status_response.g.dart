// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kyc_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KycStatusResponseImpl _$$KycStatusResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$KycStatusResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : KycStatusData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$KycStatusResponseImplToJson(
    _$KycStatusResponseImpl instance) {
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
