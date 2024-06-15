import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_business_profile_request.freezed.dart';
part 'create_business_profile_request.g.dart';

@freezed
class CreateBusinessProfileRequest with _$CreateBusinessProfileRequest {
  const factory CreateBusinessProfileRequest({
    required int userId,
    required String name,
    required int categoryId,
    required String cacNumber,
    required String staffSize,
  }) = _CreateBusinessProfileRequest;

  factory CreateBusinessProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateBusinessProfileRequestImpl.fromJson(json);
}
