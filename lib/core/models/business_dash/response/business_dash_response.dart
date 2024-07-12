import 'package:blue_business/core/models/business_dash/data/business_dash_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_dash_response.freezed.dart';
part 'business_dash_response.g.dart';

@freezed
class BusinessDashResponse with _$BusinessDashResponse {
  const factory BusinessDashResponse({
    @Default("fail") String status,
    String? message,
    BusinessDashData? data,
  }) = _BusinessDashResponse;

  factory BusinessDashResponse.fromJson(Map<String, dynamic> json) =>
      _$BusinessDashResponseImpl.fromJson(json);
}
