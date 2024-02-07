import 'package:freezed_annotation/freezed_annotation.dart';

part 'kyc_status_data.freezed.dart';
part 'kyc_status_data.g.dart';

@freezed
class KycStatusData with _$KycStatusData {
  const factory KycStatusData({
    @Default(0) int kycStatus,
  }) = _KycStatusData;

  factory KycStatusData.fromJson(Map<String, dynamic> json) =>
      _$KycStatusDataImpl.fromJson(json);
}
