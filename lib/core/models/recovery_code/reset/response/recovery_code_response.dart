import 'package:blue_business/core/models/recovery_code/get/data/recovery_code_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recovery_code_response.freezed.dart';
part 'recovery_code_response.g.dart';

@freezed
class ResetRecoveryCodeResponse with _$ResetRecoveryCodeResponse {
  const factory ResetRecoveryCodeResponse({
    @Default(false) bool success,
    String? message,
    GetRecoveryCodeData? data,
  }) = _ResetRecoveryCodeResponse;

  factory ResetRecoveryCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$ResetRecoveryCodeResponseImpl.fromJson(json);
}
