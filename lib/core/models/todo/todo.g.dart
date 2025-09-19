// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TodoOption _$TodoOptionFromJson(Map<String, dynamic> json) => _TodoOption(
  title: json['title'] as String,
  status: json['status'] as String? ?? "incomplete",
  route: json['route'] as String?,
  data: json['data'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$TodoOptionToJson(_TodoOption instance) =>
    <String, dynamic>{
      'title': instance.title,
      'status': instance.status,
      'route': ?instance.route,
      'data': ?instance.data,
    };
