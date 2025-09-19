// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TodoData _$TodoDataFromJson(Map<String, dynamic> json) => _TodoData(
  todos: (json['todos'] as List<dynamic>)
      .map((e) => TodoOption.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$TodoDataToJson(_TodoData instance) => <String, dynamic>{
  'todos': instance.todos,
};
