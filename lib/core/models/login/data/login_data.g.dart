// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginDataImpl _$$LoginDataImplFromJson(Map<String, dynamic> json) =>
    _$LoginDataImpl(
      id: (json['id'] as num).toInt(),
      phone: json['phone'] as String,
      business: BusinessData.fromJson(json['business'] as Map<String, dynamic>),
      dashboardData: DashboardData.fromJson(
          json['dashboard_data'] as Map<String, dynamic>),
      kyc: json['kyc'] as String? ?? "basic",
      token: Token.fromJson(json['token'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      displayPic: json['display_pic'] as String?,
    );

Map<String, dynamic> _$$LoginDataImplToJson(_$LoginDataImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'phone': instance.phone,
    'business': instance.business,
    'dashboard_data': instance.dashboardData,
    'kyc': instance.kyc,
    'token': instance.token,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created_at', instance.createdAt);
  writeNotNull('display_pic', instance.displayPic);
  return val;
}
