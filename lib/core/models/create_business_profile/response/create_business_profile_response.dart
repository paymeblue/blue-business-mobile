import 'package:blue_business/core/models/create_business_profile/data/create_business_profile_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_business_profile_response.freezed.dart';
part 'create_business_profile_response.g.dart';

@freezed
abstract class CreateBusinessProfileResponse
    with _$CreateBusinessProfileResponse {
  const factory CreateBusinessProfileResponse({
    @Default("fail") String status,
    String? message,
    CreateBusinessProfileData? data,
  }) = _CreateBusinessProfileResponse;

  factory CreateBusinessProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateBusinessProfileResponseFromJson(json);
}
