import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch.freezed.dart';
part 'branch.g.dart';

@freezed
abstract class Branch with _$Branch {
  const factory Branch({
    required int id,
    required String name,
    required String location,
    @Default("0") String staffSize,
    @Default("0") String totalAmount,
    int? businessId,
    String? createdAt,
  }) = _Branch;

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);
}
