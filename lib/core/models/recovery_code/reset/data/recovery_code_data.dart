import 'package:freezed_annotation/freezed_annotation.dart';

part 'recovery_code_data.freezed.dart';
part 'recovery_code_data.g.dart';

@freezed
class ResetRecoveryCodeData with _$ResetRecoveryCodeData {
  const factory ResetRecoveryCodeData({
    required String recoveryCode,
  }) = _ResetRecoveryCodeData;

  factory ResetRecoveryCodeData.fromJson(Map<String, dynamic> json) =>
      _$ResetRecoveryCodeDataImpl.fromJson(json);
}
