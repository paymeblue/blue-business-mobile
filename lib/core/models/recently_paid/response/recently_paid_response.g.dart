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
          ?.map((e) => BlueBeneficiary.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RecentlyPaidResponseImplToJson(
        _$RecentlyPaidResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
