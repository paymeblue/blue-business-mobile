import 'package:blue_business/core/models/todo/todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_response.freezed.dart';
part 'todo_response.g.dart';

@freezed
abstract class TodoResponse with _$TodoResponse {
  const factory TodoResponse({
    @Default("fail") String status,
    String? message,
    List<TodoOption>? data,
  }) = _TodoResponse;

  factory TodoResponse.fromJson(Map<String, dynamic> json) =>
      _$TodoResponseFromJson(json);
}
