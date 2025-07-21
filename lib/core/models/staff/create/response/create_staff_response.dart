import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_staff_response.freezed.dart';
part 'create_staff_response.g.dart';

@freezed
class CreateStaffResponse with _$CreateStaffResponse {
  const factory CreateStaffResponse({
    @Default("fail") String status,
    @Default("") String message,
  }) = _CreateStaffResponse;

  factory CreateStaffResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateStaffResponseImpl.fromJson(json);
}
