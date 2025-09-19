import 'package:freezed_annotation/freezed_annotation.dart';

part 'complete_registration_response.freezed.dart';
part 'complete_registration_response.g.dart';

@freezed
abstract class CompleteRegistrationResponse
    with _$CompleteRegistrationResponse {
  const factory CompleteRegistrationResponse({
    @Default("fail") String status,
    String? message,
  }) = _CompleteRegistrationResponse;

  factory CompleteRegistrationResponse.fromJson(Map<String, dynamic> json) =>
      _$CompleteRegistrationResponseFromJson(json);
}
