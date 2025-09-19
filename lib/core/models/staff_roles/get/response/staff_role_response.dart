import 'package:blue_business/core/models/staff_roles/get/item/staff_role.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'staff_role_response.freezed.dart';
part 'staff_role_response.g.dart';

@freezed
abstract class GetStaffRoleResponse with _$GetStaffRoleResponse {
  const factory GetStaffRoleResponse({
    @Default('fail') String status,
    String? message,
    List<StaffRole>? data,
  }) = _GetStaffRoleResponse;

  factory GetStaffRoleResponse.fromJson(Map<String, dynamic> json) =>
      _$GetStaffRoleResponseFromJson(json);
}
