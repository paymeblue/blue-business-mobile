// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_receiver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifiedReceiverImpl _$$VerifiedReceiverImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifiedReceiverImpl(
      id: json['id'] as int,
      userId: json['user_id'] as int?,
      walletCode: json['wallet_code'] as String?,
      receiverName: json['receiver_name'] as String,
      phone: json['phone'] as String,
      amount: json['amount'] as String,
      charge: json['charge'] as int,
    );

Map<String, dynamic> _$$VerifiedReceiverImplToJson(
    _$VerifiedReceiverImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  writeNotNull('wallet_code', instance.walletCode);
  val['receiver_name'] = instance.receiverName;
  val['phone'] = instance.phone;
  val['amount'] = instance.amount;
  val['charge'] = instance.charge;
  return val;
}
