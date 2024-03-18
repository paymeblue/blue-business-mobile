// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recently_paid_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecentlyPaidResponseImpl _$$RecentlyPaidResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RecentlyPaidResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => RecentlyPaidItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RecentlyPaidResponseImplToJson(
    _$RecentlyPaidResponseImpl instance) {
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
