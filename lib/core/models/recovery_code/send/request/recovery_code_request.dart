import 'package:freezed_annotation/freezed_annotation.dart';

part 'recovery_code_request.freezed.dart';
part 'recovery_code_request.g.dart';

@freezed
class SendRecoveryCodeRequest with _$SendRecoveryCodeRequest {
  const factory SendRecoveryCodeRequest({
    required String code,
  }) = _SendRecoveryCodeRequest;

  factory SendRecoveryCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$SendRecoveryCodeRequestImpl.fromJson(json);
}
