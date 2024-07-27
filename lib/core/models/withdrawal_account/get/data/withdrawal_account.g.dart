// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WithdrawalAccountImpl _$$WithdrawalAccountImplFromJson(
        Map<String, dynamic> json) =>
    _$WithdrawalAccountImpl(
      id: json['id'] as int,
      bankId: json['bank_id'] as int,
      bankName: json['bank_name'] as String?,
      accountName: json['account_name'] as String,
      accountNumber: json['account_number'] as String,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$WithdrawalAccountImplToJson(
    _$WithdrawalAccountImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'bank_id': instance.bankId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bank_name', instance.bankName);
  val['account_name'] = instance.accountName;
  val['account_number'] = instance.accountNumber;
  writeNotNull('created_at', instance.createdAt);
  return val;
}
