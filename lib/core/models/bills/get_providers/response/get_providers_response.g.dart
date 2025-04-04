// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_providers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetProvidersResponseImpl _$$GetProvidersResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetProvidersResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BillProvider.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetProvidersResponseImplToJson(
        _$GetProvidersResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
