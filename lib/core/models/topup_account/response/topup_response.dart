import 'package:blue_business/core/models/topup_account/data/topup_account_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'topup_response.freezed.dart';
part 'topup_response.g.dart';

@freezed
class TopupResponse with _$TopupResponse {
  const factory TopupResponse({
    @Default("fail") String status,
    String? message,
    TopupAccountData? data,
  }) = _TopupResponse;

  factory TopupResponse.fromJson(Map<String, dynamic> json) =>
      _$TopupResponseImpl.fromJson(json);
}
