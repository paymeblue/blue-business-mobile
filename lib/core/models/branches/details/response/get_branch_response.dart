import 'package:blue_business/core/models/branches/branch.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_branch_response.freezed.dart';
part 'get_branch_response.g.dart';

@freezed
abstract class GetBranchResponse with _$GetBranchResponse {
  const factory GetBranchResponse({
    @Default("fail") String status,
    String? message,
    Branch? data,
  }) = _GetBranchResponse;

  factory GetBranchResponse.fromJson(Map<String, dynamic> json) =>
      _$GetBranchResponseFromJson(json);
}
