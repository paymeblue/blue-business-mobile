import 'package:blue_business/core/models/recovery_code/get/data/recovery_code_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recovery_code_data.freezed.dart';
part 'recovery_code_data.g.dart';

@freezed
class ResetRecoveryCodeData with _$ResetRecoveryCodeData {
  const factory ResetRecoveryCodeData({
    required GetRecoveryCodeData code,
  }) = _ResetRecoveryCodeData;

  factory ResetRecoveryCodeData.fromJson(Map<String, dynamic> json) =>
      _$ResetRecoveryCodeDataImpl.fromJson(json);
}
