import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_staff_request.freezed.dart';
part 'create_staff_request.g.dart';

@freezed
class CreateStaffRequest with _$CreateStaffRequest {
  const factory CreateStaffRequest({
    required String name,
    required String phone,
    required String password,
  }) = _CreateStaffRequest;

  factory CreateStaffRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateStaffRequestImpl.fromJson(json);
}
