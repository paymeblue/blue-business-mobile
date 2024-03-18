import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class TodoOption with _$TodoOption {
  const factory TodoOption({
    required String title,
    @Default("incomplete") String status,
    String? route,
    Map<String, dynamic>? data,
  }) = _TodoOption;

  factory TodoOption.fromJson(Map<String, dynamic> json) =>
      _$TodoOptionImpl.fromJson(json);
}
