import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_dash_data.freezed.dart';
part 'business_dash_data.g.dart';

@freezed
class BusinessDashData with _$BusinessDashData {
  const factory BusinessDashData({
    @Default(0) int totalBranches,
    @Default(0) int totalStaff,
    @Default(0) int transactionVolume,
    @Default("0.00") String walletBalance,
  }) = _BusinessDashData;

  factory BusinessDashData.fromJson(Map<String, dynamic> json) =>
      _$BusinessDashDataImpl.fromJson(json);
}
