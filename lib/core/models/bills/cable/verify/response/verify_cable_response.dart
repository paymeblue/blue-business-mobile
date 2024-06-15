import 'package:blue_business/core/models/bills/cable/verify/data/verify_cable_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_cable_response.freezed.dart';
part 'verify_cable_response.g.dart';

@freezed
class VerifyCableResponse with _$VerifyCableResponse {
  const factory VerifyCableResponse({
    @Default("fail") String status,
    String? message,
    VerifyCableData? data,
  }) = _VerifyCableResponse;

  factory VerifyCableResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyCableResponseImpl.fromJson(json);
}
