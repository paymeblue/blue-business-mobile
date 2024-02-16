// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recently_paid_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecentlyPaidResponseImpl _$$RecentlyPaidResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RecentlyPaidResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : RecentlyPaidData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RecentlyPaidResponseImplToJson(
    _$RecentlyPaidResponseImpl instance) {
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
