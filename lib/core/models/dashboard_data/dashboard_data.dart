import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_data.freezed.dart';
part 'dashboard_data.g.dart';

@freezed
abstract class DashboardData with _$DashboardData {
  const factory DashboardData({
    @Default(0) int totalStaff,
    @Default(0) int totalBranches,
    @Default(0) int transactionVolume,
    @Default(0) int netProfit,
  }) = _DashboardData;

  factory DashboardData.fromJson(Map<String, dynamic> json) =>
      _$DashboardDataFromJson(json);
}
