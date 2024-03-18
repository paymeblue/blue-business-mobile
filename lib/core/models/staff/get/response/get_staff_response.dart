import 'package:blue_business/core/models/staff/get/item/staff.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_staff_response.freezed.dart';
part 'get_staff_response.g.dart';

@freezed
class GetStaffResponse with _$GetStaffResponse {
  const factory GetStaffResponse({
    @Default("fail") String status,
    List<Staff>? data,
    String? message,
  }) = _GetStaffResponse;

  factory GetStaffResponse.fromJson(Map<String, dynamic> json) =>
      _$GetStaffResponseImpl.fromJson(json);
}
