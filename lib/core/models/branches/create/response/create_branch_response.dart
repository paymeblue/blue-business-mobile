import 'package:blue_business/core/models/branches/branch.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_branch_response.freezed.dart';
part 'create_branch_response.g.dart';

@freezed
abstract class CreateBranchResponse with _$CreateBranchResponse {
  const factory CreateBranchResponse({
    @Default("fail") String status,
    String? message,
    Branch? data,
  }) = _CreateBranchResponse;

  factory CreateBranchResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateBranchResponseFromJson(json);
}
