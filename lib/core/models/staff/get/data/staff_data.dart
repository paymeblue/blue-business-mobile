import 'package:blue_business/core/models/staff/get/item/staff.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'staff_data.freezed.dart';
part 'staff_data.g.dart';

@freezed
class GetStaffData with _$GetStaffData {
  const factory GetStaffData({
    required String total,
    required String limit,
    required String page,
    @Default([]) List<Staff> data,
    @Default(false) bool loadMore,
  }) = _GetStaffData;

  factory GetStaffData.fromJson(Map<String, dynamic> json) =>
      _$GetStaffDataImpl.fromJson(json);
}
