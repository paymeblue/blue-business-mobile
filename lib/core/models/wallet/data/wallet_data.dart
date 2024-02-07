import 'package:blue_business/core/models/wallet/wallet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_data.freezed.dart';
part 'wallet_data.g.dart';

@freezed
class WalletData with _$WalletData {
  const factory WalletData({
    required Wallet wallet,
  }) = _WalletData;

  factory WalletData.fromJson(Map<String, dynamic> json) =>
      _$WalletDataImpl.fromJson(json);
}
