import 'package:blue_business/core/models/todo/data/todo_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_response.freezed.dart';
part 'todo_response.g.dart';

@freezed
class TodoResponse with _$TodoResponse {
  const factory TodoResponse({
    @Default(false) bool success,
    String? message,
    TodoData? data,
  }) = _TodoResponse;

  factory TodoResponse.fromJson(Map<String, dynamic> json) =>
      _$TodoResponseImpl.fromJson(json);
}
