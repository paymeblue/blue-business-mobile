import 'package:blue_business/core/models/withdrawal_account/get/data/withdrawal_account.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_payout_data.freezed.dart';
part 'set_payout_data.g.dart';

@freezed
class SetPayoutData with _$SetPayoutData {
  const factory SetPayoutData({
    required WithdrawalAccount withdrawalAccount,
  }) = _SetPayoutData;

  factory SetPayoutData.fromJson(Map<String, dynamic> json) =>
      _$SetPayoutDataImpl.fromJson(json);
}
