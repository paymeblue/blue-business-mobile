import 'package:freezed_annotation/freezed_annotation.dart';

part 'staff.freezed.dart';
part 'staff.g.dart';

@freezed
class Staff with _$Staff {
  const factory Staff({
    required int id,
    required String name,
    required String branchName,
    required String phone,
    String? displayPicture,
    @Default('cashier') String role,
    String? createdAt,
  }) = _Staff;

  factory Staff.fromJson(Map<String, dynamic> json) =>
      _$StaffImpl.fromJson(json);
}
