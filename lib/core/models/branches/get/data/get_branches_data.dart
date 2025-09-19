import 'package:blue_business/core/models/branches/branch.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_branches_data.freezed.dart';
part 'get_branches_data.g.dart';

@freezed
abstract class GetBranchesData with _$GetBranchesData {
  const factory GetBranchesData({
    @Default(0) int total,
    @Default(1) int page,
    @Default(1) int limit,
    @Default([]) List<Branch> data,
    @Default(false) bool loadMore,
    int? perPage,
  }) = _GetBranchesData;

  factory GetBranchesData.fromJson(Map<String, dynamic> json) =>
      _$GetBranchesDataFromJson(json);
}
