import 'package:blue_business/core/models/business_profile/name/data/busines_name_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'busines_name_response.freezed.dart';
part 'busines_name_response.g.dart';

@freezed
class BusinessNameResponse with _$BusinessNameResponse {
  const factory BusinessNameResponse({
    @Default("fail") String status,
    String? message,
    BusinessNameData? data,
  }) = _BusinessNameResponse;

  factory BusinessNameResponse.fromJson(Map<String, dynamic> json) =>
      _$BusinessNameResponseImpl.fromJson(json);
}
