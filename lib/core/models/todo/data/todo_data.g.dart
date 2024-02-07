// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoDataImpl _$$TodoDataImplFromJson(Map<String, dynamic> json) =>
    _$TodoDataImpl(
      todos: (json['todos'] as List<dynamic>)
          .map((e) => TodoOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TodoDataImplToJson(_$TodoDataImpl instance) =>
    <String, dynamic>{
      'todos': instance.todos,
    };
