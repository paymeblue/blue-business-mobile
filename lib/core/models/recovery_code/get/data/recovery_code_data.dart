import 'package:freezed_annotation/freezed_annotation.dart';

part 'recovery_code_data.freezed.dart';
part 'recovery_code_data.g.dart';

@freezed
class GetRecoveryCodeData with _$GetRecoveryCodeData {
  const factory GetRecoveryCodeData({
    required int id,
    required String recoveryCode,
  }) = _GetRecoveryCodeData;

  factory GetRecoveryCodeData.fromJson(Map<String, dynamic> json) =>
      _$GetRecoveryCodeDataImpl.fromJson(json);
}
