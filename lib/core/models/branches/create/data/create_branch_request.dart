import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_branch_request.freezed.dart';
part 'create_branch_request.g.dart';

@freezed
abstract class CreateBranchRequest with _$CreateBranchRequest {
  const factory CreateBranchRequest({
    required String name,
    required String staffSize,
    required String location,
  }) = _CreateBranchRequest;

  factory CreateBranchRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateBranchRequestFromJson(json);
}
