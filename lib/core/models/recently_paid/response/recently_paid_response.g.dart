// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recently_paid_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecentlyPaidResponse _$RecentlyPaidResponseFromJson(
  Map<String, dynamic> json,
) => _RecentlyPaidResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => BlueBeneficiary.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$RecentlyPaidResponseToJson(
  _RecentlyPaidResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
