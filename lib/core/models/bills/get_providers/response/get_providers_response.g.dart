// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_providers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetProvidersResponse _$GetProvidersResponseFromJson(
  Map<String, dynamic> json,
) => _GetProvidersResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => BillProvider.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetProvidersResponseToJson(
  _GetProvidersResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
