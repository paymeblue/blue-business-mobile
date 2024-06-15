import 'package:freezed_annotation/freezed_annotation.dart';

part 'complete_registration_request.freezed.dart';
part 'complete_registration_request.g.dart';

@freezed
class CompleteRegistrationRequest with _$CompleteRegistrationRequest {
  const factory CompleteRegistrationRequest({
    required int userId,
    required String pin,
  }) = _CompleteRegistrationRequest;

  factory CompleteRegistrationRequest.fromJson(Map<String, dynamic> json) =>
      _$CompleteRegistrationRequestImpl.fromJson(json);
}
