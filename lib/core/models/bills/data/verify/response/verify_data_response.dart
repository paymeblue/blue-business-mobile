import 'package:blue_business/core/models/bills/data/verify/data/verify_data_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_data_response.freezed.dart';
part 'verify_data_response.g.dart';

@freezed
abstract class VerifyDataResponse with _$VerifyDataResponse {
  const factory VerifyDataResponse({
    @Default("fail") String status,
    String? message,
    VerifyDataData? data,
  }) = _VerifyDataResponse;

  factory VerifyDataResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyDataResponseFromJson(json);
}
