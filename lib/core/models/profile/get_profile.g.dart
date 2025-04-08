// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetProfileResponseImpl _$$GetProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetProfileResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : GetProfileData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetProfileResponseImplToJson(
        _$GetProfileResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };

_$GetProfileDataImpl _$$GetProfileDataImplFromJson(Map<String, dynamic> json) =>
    _$GetProfileDataImpl(
      id: (json['id'] as num).toInt(),
      businessId: (json['business_id'] as num).toInt(),
      walletId: (json['wallet_id'] as num).toInt(),
      businessName: json['business_name'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phone: json['phone'] as String,
      middleName: json['middle_name'] as String?,
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

Map<String, dynamic> _$$GetProfileDataImplToJson(
        _$GetProfileDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'business_id': instance.businessId,
      'wallet_id': instance.walletId,
      'business_name': instance.businessName,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      if (instance.middleName case final value?) 'middle_name': value,
      if (instance.displayPicture case final value?) 'display_picture': value,
      if (instance.staffId case final value?) 'staff_id': value,
      'notification_status': instance.notificationStatus,
      'reset_credential_status': instance.resetCredentialStatus,
      'auto_withdrawal_enabled': instance.autoWithdrawalEnabled,
      'business_profile_completed': instance.businessProfileCompleted,
      'business_details_completed': instance.businessDetailsCompleted,
      'business_kyc_completed': instance.businessKycCompleted,
      'proof_of_address_verified': instance.proofOfAddressVerified,
      'kyc': instance.kyc,
    };
