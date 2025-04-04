// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoOptionImpl _$$TodoOptionImplFromJson(Map<String, dynamic> json) =>
    _$TodoOptionImpl(
      title: json['title'] as String,
      status: json['status'] as String? ?? "incomplete",
      route: json['route'] as String?,
      data: json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$TodoOptionImplToJson(_$TodoOptionImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'status': instance.status,
      if (instance.route case final value?) 'route': value,
      if (instance.data case final value?) 'data': value,
    };
