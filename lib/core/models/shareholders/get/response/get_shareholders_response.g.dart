// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_shareholders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetShareholdersResponseImpl _$$GetShareholdersResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetShareholdersResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Shareholders.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetShareholdersResponseImplToJson(
        _$GetShareholdersResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
