import 'package:blue_business/core/models/topup_account/topup_account.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'topup_account_data.freezed.dart';
part 'topup_account_data.g.dart';

@freezed
class TopupAccountData with _$TopupAccountData {
  const factory TopupAccountData({
    required TopupAccount account,
  }) = _TopupAccountData;

  factory TopupAccountData.fromJson(Map<String, dynamic> json) =>
      _$TopupAccountDataImpl.fromJson(json);
}
