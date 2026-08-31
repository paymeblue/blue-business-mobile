import 'package:freezed_annotation/freezed_annotation.dart';

part 'withdraw_request.freezed.dart';
part 'withdraw_request.g.dart';

@freezed
abstract class WithdrawRequest with _$WithdrawRequest {
  const factory WithdrawRequest({
    required String amount,
    @Default("withdrawal") String paymentMode,
    required String passcode,
  }) = _WithdrawRequest;

  factory WithdrawRequest.fromJson(Map<String, dynamic> json) =>
      _$WithdrawRequestFromJson(json);
}
