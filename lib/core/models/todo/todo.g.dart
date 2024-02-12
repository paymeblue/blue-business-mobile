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
    );

Map<String, dynamic> _$$TodoOptionImplToJson(_$TodoOptionImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'status': instance.status,
      'route': instance.route,
    };
