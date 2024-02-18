import 'package:freezed_annotation/freezed_annotation.dart';

part 'busines_location_request.freezed.dart';
part 'busines_location_request.g.dart';

@freezed
class BusinessLocationRequest with _$BusinessLocationRequest {
  const factory BusinessLocationRequest({
    required String address,
    required String lga,
    required String state,
    required String city,
  }) = _BusinessLocationRequest;

  factory BusinessLocationRequest.fromJson(Map<String, dynamic> json) =>
      _$BusinessLocationRequestImpl.fromJson(json);
}
