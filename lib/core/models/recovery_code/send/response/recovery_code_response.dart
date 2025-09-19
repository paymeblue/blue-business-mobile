import 'package:blue_business/core/models/recovery_code/send/data/recovery_code_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recovery_code_response.freezed.dart';
part 'recovery_code_response.g.dart';

@freezed
abstract class SendRecoveryCodeResponse with _$SendRecoveryCodeResponse {
  const factory SendRecoveryCodeResponse({
    @Default("fail") String status,
    String? message,
    SendRecoveryCodeData? data,
  }) = _SendRecoveryCodeResponse;

  factory SendRecoveryCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$SendRecoveryCodeResponseFromJson(json);
}
