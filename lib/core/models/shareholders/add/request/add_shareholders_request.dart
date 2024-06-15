import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_shareholders_request.freezed.dart';
part 'add_shareholders_request.g.dart';

@freezed
class AddShareholdersRequest with _$AddShareholdersRequest {
  const factory AddShareholdersRequest({
    required String bvn,
    required int shareholderId,
    required int userId,
  }) = _AddShareholdersRequest;

  factory AddShareholdersRequest.fromJson(Map<String, dynamic> json) =>
      _$AddShareholdersRequestImpl.fromJson(json);
}
