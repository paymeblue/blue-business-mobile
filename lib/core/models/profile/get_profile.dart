import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_profile.freezed.dart';
part 'get_profile.g.dart';

@freezed
class GetProfileResponse with _$GetProfileResponse {
  const factory GetProfileResponse({
    @Default("fail") String status,
    String? message,
    GetProfileData? data,
  }) = _GetProfileResponse;

  factory GetProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$GetProfileResponseImpl.fromJson(json);
}

@freezed
class GetProfileData with _$GetProfileData {
  const factory GetProfileData({
    required int id,
    required String firstName,
    required String lastName,
    required String phone,
    String? middleName,
    String? displayPic,
  }) = _GetProfileData;

  factory GetProfileData.fromJson(Map<String, dynamic> json) =>
      _$GetProfileDataImpl.fromJson(json);
}

/*
 */
