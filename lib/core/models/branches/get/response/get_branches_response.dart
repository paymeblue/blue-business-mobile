import 'package:blue_business/core/models/branches/get/data/get_branches_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_branches_response.freezed.dart';
part 'get_branches_response.g.dart';

@freezed
class GetBranchesResponse with _$GetBranchesResponse {
  const factory GetBranchesResponse({
    @Default("fail") String status,
    String? message,
    GetBranchesData? data,
  }) = _GetBranchesResponse;

  factory GetBranchesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetBranchesResponseImpl.fromJson(json);
}
