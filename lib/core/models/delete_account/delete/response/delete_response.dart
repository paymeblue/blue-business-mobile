import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_response.freezed.dart';
part 'delete_response.g.dart';

@freezed
class DeleteResponse with _$DeleteResponse {
  const factory DeleteResponse({
    @Default("fail") String status,
    String? message,
  }) = _DeleteResponse;

  factory DeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteResponseImpl.fromJson(json);
}
