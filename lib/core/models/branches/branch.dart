import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch.freezed.dart';
part 'branch.g.dart';

@freezed
class Branch with _$Branch {
  const factory Branch({
    required int id,
    required String name,
    required String location,
    @Default("0") String staffSize,
    int? businessId,
    String? createdAt,
  }) = _Branch;

  factory Branch.fromJson(Map<String, dynamic> json) =>
      _$BranchImpl.fromJson(json);
}
