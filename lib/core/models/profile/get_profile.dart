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
    required String phone,
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
{"id":3,
"phone":"2348161356342",
"display_picture":"https://blue-image-files.s3.amazonaws.com/3e7104d8-aa28-47c3-a7d5-c40490be3215",
"notification_status":true,
"reset_credential_status":true,
"kyc":"pro",
"business_id":13,
"business_name":"TLogix Solutions Limited",
"wallet_id":4,
"staff_id":null,
"auto_withdrawal_enabled":true,
"business_profile_completed":false,
"business_details_completed":true,
"business_kyc_completed":true,
"proof_of_address_verified":false
}
 */
