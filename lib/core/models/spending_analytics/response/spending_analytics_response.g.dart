// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spending_analytics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpendingAnalyticsResponseImpl _$$SpendingAnalyticsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SpendingAnalyticsResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SpendingAnalyticsData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpendingAnalyticsResponseImplToJson(
    _$SpendingAnalyticsResponseImpl instance) {
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
