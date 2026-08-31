import 'package:blue_business/core/models/todo/todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_data.freezed.dart';
part 'todo_data.g.dart';

@freezed
abstract class TodoData with _$TodoData {
  const factory TodoData({required List<TodoOption> todos}) = _TodoData;

  factory TodoData.fromJson(Map<String, dynamic> json) =>
      _$TodoDataFromJson(json);
}
