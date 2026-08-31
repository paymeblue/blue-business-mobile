import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_payout_data.freezed.dart';
part 'verify_payout_data.g.dart';

@freezed
abstract class VerifyPayoutData with _$VerifyPayoutData {
  const factory VerifyPayoutData({
    required int id,
    required String reference,
    required String accountNumber,
    required String accountName,
  }) = _VerifyPayoutData;

  factory VerifyPayoutData.fromJson(Map<String, dynamic> json) =>
      _$VerifyPayoutDataFromJson(json);
}
