// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal_account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WithdrawalAccountResponseImpl _$$WithdrawalAccountResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WithdrawalAccountResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : WithdrawalAccount.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WithdrawalAccountResponseImplToJson(
    _$WithdrawalAccountResponseImpl instance) {
  final val = <String, dynamic>{
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data);
  return val;
}
