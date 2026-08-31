import 'package:freezed_annotation/freezed_annotation.dart';

part 'staff_role.freezed.dart';
part 'staff_role.g.dart';

@freezed
abstract class StaffRole with _$StaffRole {
  const factory StaffRole({required int id, required String name}) = _StaffRole;

  factory StaffRole.fromJson(Map<String, dynamic> json) =>
      _$StaffRoleFromJson(json);
}
