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
      data: json['data'] == null
          ? null
          : RecentlyPaidData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RecentlyPaidResponseImplToJson(
        _$RecentlyPaidResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
