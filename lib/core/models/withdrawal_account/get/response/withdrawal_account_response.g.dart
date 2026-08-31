// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal_account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WithdrawalAccountResponse _$WithdrawalAccountResponseFromJson(
  Map<String, dynamic> json,
) => _WithdrawalAccountResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : WithdrawalAccount.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$WithdrawalAccountResponseToJson(
  _WithdrawalAccountResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
