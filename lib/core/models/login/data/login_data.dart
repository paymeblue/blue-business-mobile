import 'package:blue_business/core/models/business_profile/business_data.dart';
import 'package:blue_business/core/models/dashboard_data/dashboard_data.dart';
import 'package:blue_business/core/models/token/token.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_data.freezed.dart';
part 'login_data.g.dart';

@freezed
abstract class LoginData with _$LoginData {
  const factory LoginData({
    required int id,
    required String phone,
    required BusinessData business,
    required DashboardData dashboardData,
    @Default("basic") String kyc,
    required Token token,
    String? createdAt,
    String? displayPicture,
    @Default(false) bool proofOfAddressVerified,
  }) = _LoginData;

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);
}
