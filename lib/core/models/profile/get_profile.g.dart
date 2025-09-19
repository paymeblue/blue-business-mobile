// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetProfileResponse _$GetProfileResponseFromJson(Map<String, dynamic> json) =>
    _GetProfileResponse(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : GetProfileData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetProfileResponseToJson(_GetProfileResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': ?instance.message,
      'data': ?instance.data,
    };

_GetProfileData _$GetProfileDataFromJson(Map<String, dynamic> json) =>
    _GetProfileData(
      id: (json['id'] as num).toInt(),
      businessId: (json['business_id'] as num).toInt(),
      walletId: (json['wallet_id'] as num).toInt(),
      businessName: json['business_name'] as String,
      phone: json['phone'] as String,
      displayPicture: json['display_picture'] as String?,
      staffId: (json['staff_id'] as num?)?.toInt(),
      notificationStatus: json['notification_status'] as bool? ?? false,
      resetCredentialStatus: json['reset_credential_status'] as bool? ?? false,
      autoWithdrawalEnabled: json['auto_withdrawal_enabled'] as bool? ?? false,
      businessProfileCompleted:
          json['business_profile_completed'] as bool? ?? false,
      businessDetailsCompleted:
          json['business_details_completed'] as bool? ?? false,
      businessKycCompleted: json['business_kyc_completed'] as bool? ?? false,
      proofOfAddressVerified:
          json['proof_of_address_verified'] as bool? ?? false,
      kyc: json['kyc'] as String? ?? "pro",
    );

Map<String, dynamic> _$GetProfileDataToJson(_GetProfileData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'business_id': instance.businessId,
      'wallet_id': instance.walletId,
      'business_name': instance.businessName,
      'phone': instance.phone,
      'display_picture': ?instance.displayPicture,
      'staff_id': ?instance.staffId,
      'notification_status': instance.notificationStatus,
      'reset_credential_status': instance.resetCredentialStatus,
      'auto_withdrawal_enabled': instance.autoWithdrawalEnabled,
      'business_profile_completed': instance.businessProfileCompleted,
      'business_details_completed': instance.businessDetailsCompleted,
      'business_kyc_completed': instance.businessKycCompleted,
      'proof_of_address_verified': instance.proofOfAddressVerified,
      'kyc': instance.kyc,
    };
