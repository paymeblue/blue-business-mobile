import 'package:blue_business/core/models/staff/get/item/staff.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'staff_data.freezed.dart';
part 'staff_data.g.dart';

@freezed
abstract class GetStaffData with _$GetStaffData {
  const factory GetStaffData({
    required int total,
    required int limit,
    required int page,
    @Default([]) List<Staff> data,
    @Default(false) bool loadMore,
    int? perPage,
  }) = _GetStaffData;

  factory GetStaffData.fromJson(Map<String, dynamic> json) =>
      _$GetStaffDataFromJson(json);
}
