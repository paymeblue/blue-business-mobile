import 'package:blue_business/core/models/token/token.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_data.freezed.dart';
part 'login_data.g.dart';

@freezed
class LoginData with _$LoginData {
  const factory LoginData(
      {required int id,
      required String phone,
      @Default("basic") String kyc,
      @Default(0) int totalStaff,
      @Default(0) int totalBranches,
      @Default(0) int transactionVolume,
      @Default(0) int netProfit,
      required Token token,
      String? createdAt}) = _LoginData;

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataImpl.fromJson(json);
}
