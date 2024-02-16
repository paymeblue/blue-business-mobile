// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiate_transaction_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitiateTransactionRequestImpl _$$InitiateTransactionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$InitiateTransactionRequestImpl(
      amount: json['amount'] as String,
      narration: json['narration'] as String?,
      paymentMode: json['payment_mode'] as String,
    );

Map<String, dynamic> _$$InitiateTransactionRequestImplToJson(
    _$InitiateTransactionRequestImpl instance) {
  final val = <String, dynamic>{
    'amount': instance.amount,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('narration', instance.narration);
  val['payment_mode'] = instance.paymentMode;
  return val;
}
