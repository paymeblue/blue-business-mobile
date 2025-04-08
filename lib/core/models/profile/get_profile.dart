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
    required int businessId,
    required int walletId,
    required String businessName,
    required String firstName,
    required String lastName,
    required String phone,
    String? middleName,
    String? displayPicture,
    int? staffId,
    @Default(false) bool notificationStatus,
    @Default(false) bool resetCredentialStatus,
    @Default(false) bool autoWithdrawalEnabled,
    @Default(false) bool businessProfileCompleted,
    @Default(false) bool businessDetailsCompleted,
    @Default(false) bool businessKycCompleted,
    @Default(false) bool proofOfAddressVerified,
    @Default("pro") String kyc,
  }) = _GetProfileData;

  factory GetProfileData.fromJson(Map<String, dynamic> json) =>
      _$GetProfileDataImpl.fromJson(json);
}

/*
 */
