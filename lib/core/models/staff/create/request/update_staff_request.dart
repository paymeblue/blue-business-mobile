import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_staff_request.freezed.dart';
part 'update_staff_request.g.dart';

@freezed
abstract class UpdateStaffRequest with _$UpdateStaffRequest {
  const factory UpdateStaffRequest({
    String? name,
    String? phone,
    String? password,
    String? role,
    int? branchId,
  }) = _UpdateStaffRequest;

  factory UpdateStaffRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateStaffRequestFromJson(json);
}
