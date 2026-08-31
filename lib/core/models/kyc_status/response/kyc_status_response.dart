import 'package:blue_business/core/models/kyc_status/data/kyc_status_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kyc_status_response.freezed.dart';
part 'kyc_status_response.g.dart';

@freezed
abstract class KycStatusResponse with _$KycStatusResponse {
  const factory KycStatusResponse({
    @Default("fail") String status,
    String? message,
    KycStatusData? data,
  }) = _KycStatusResponse;

  factory KycStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$KycStatusResponseFromJson(json);
}
