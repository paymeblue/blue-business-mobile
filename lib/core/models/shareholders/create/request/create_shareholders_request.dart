import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_shareholders_request.freezed.dart';
part 'create_shareholders_request.g.dart';

@freezed
abstract class CreateShareholdersRequest with _$CreateShareholdersRequest {
  const factory CreateShareholdersRequest({
    required String name,
    required String bvn,
    required int businessId,
    required int userId,
  }) = _CreateShareholdersRequest;

  factory CreateShareholdersRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateShareholdersRequestFromJson(json);
}
