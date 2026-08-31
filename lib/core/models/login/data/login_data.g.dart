// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginData _$LoginDataFromJson(Map<String, dynamic> json) => _LoginData(
  id: (json['id'] as num).toInt(),
  phone: json['phone'] as String,
  business: BusinessData.fromJson(json['business'] as Map<String, dynamic>),
  dashboardData: DashboardData.fromJson(
    json['dashboard_data'] as Map<String, dynamic>,
  ),
  kyc: json['kyc'] as String? ?? "basic",
  token: Token.fromJson(json['token'] as Map<String, dynamic>),
  createdAt: json['created_at'] as String?,
  displayPicture: json['display_picture'] as String?,
  proofOfAddressVerified: json['proof_of_address_verified'] as bool? ?? false,
);

Map<String, dynamic> _$LoginDataToJson(_LoginData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'business': instance.business,
      'dashboard_data': instance.dashboardData,
      'kyc': instance.kyc,
      'token': instance.token,
      'created_at': ?instance.createdAt,
      'display_picture': ?instance.displayPicture,
      'proof_of_address_verified': instance.proofOfAddressVerified,
    };
