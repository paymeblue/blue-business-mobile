import 'package:blue_business/core/models/recovery_code/get/data/recovery_code_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recovery_code_response.freezed.dart';
part 'recovery_code_response.g.dart';

@freezed
abstract class GetRecoveryCodeResponse with _$GetRecoveryCodeResponse {
  const factory GetRecoveryCodeResponse({
    @Default("fail") String status,
    String? message,
    GetRecoveryCodeData? data,
  }) = _GetRecoveryCodeResponse;

  factory GetRecoveryCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$GetRecoveryCodeResponseFromJson(json);
}
