import 'package:blue_business/core/models/wallet/data/wallet_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_response.freezed.dart';
part 'wallet_response.g.dart';

@freezed
class WalletResponse with _$WalletResponse {
  const factory WalletResponse({
    @Default(false) bool success,
    String? message,
    WalletData? data,
  }) = _WalletResponse;

  factory WalletResponse.fromJson(Map<String, dynamic> json) =>
      _$WalletResponseImpl.fromJson(json);
}
