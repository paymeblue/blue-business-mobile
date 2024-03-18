import 'package:freezed_annotation/freezed_annotation.dart';

part 'recovery_code_data.freezed.dart';
part 'recovery_code_data.g.dart';

@freezed
class SendRecoveryCodeData with _$SendRecoveryCodeData {
  const factory SendRecoveryCodeData({
    required int userId,
  }) = _SendRecoveryCodeData;

  factory SendRecoveryCodeData.fromJson(Map<String, dynamic> json) =>
      _$SendRecoveryCodeDataImpl.fromJson(json);
}
