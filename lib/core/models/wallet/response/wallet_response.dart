import 'package:blue_business/core/models/wallet/wallet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_response.freezed.dart';
part 'wallet_response.g.dart';

@freezed
abstract class WalletResponse with _$WalletResponse {
  const factory WalletResponse({
    @Default("fail") String status,
    String? message,
    Wallet? data,
  }) = _WalletResponse;

  factory WalletResponse.fromJson(Map<String, dynamic> json) =>
      _$WalletResponseFromJson(json);
}
