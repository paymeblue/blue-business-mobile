import 'package:freezed_annotation/freezed_annotation.dart';

part 'recovery_code_response.freezed.dart';
part 'recovery_code_response.g.dart';

@freezed
class ResetRecoveryCodeResponse with _$ResetRecoveryCodeResponse {
  const factory ResetRecoveryCodeResponse({
    @Default("fail") String status,
    String? message,
    String? data,
  }) = _ResetRecoveryCodeResponse;

  factory ResetRecoveryCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$ResetRecoveryCodeResponseImpl.fromJson(json);
}
