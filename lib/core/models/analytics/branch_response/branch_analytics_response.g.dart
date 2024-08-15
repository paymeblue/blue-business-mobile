// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_analytics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BranchAnalyticsResponseImpl _$$BranchAnalyticsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BranchAnalyticsResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : BranchAnalyticsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BranchAnalyticsResponseImplToJson(
    _$BranchAnalyticsResponseImpl instance) {
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
