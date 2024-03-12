import 'package:freezed_annotation/freezed_annotation.dart';

part 'busines_name_request.freezed.dart';
part 'busines_name_request.g.dart';

@freezed
class BusinessNameRequest with _$BusinessNameRequest {
  const factory BusinessNameRequest({
    required String name,
    required String categoryId,
    required String description,
  }) = _BusinessNameRequest;

  factory BusinessNameRequest.fromJson(Map<String, dynamic> json) =>
      _$BusinessNameRequestImpl.fromJson(json);
}
