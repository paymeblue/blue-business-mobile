import 'package:blue_business/core/models/banks/item/bank.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
abstract class BankData with _$BankData {
  const factory BankData({required List<BankItem> banks}) = _BankData;

  factory BankData.fromJson(Map<String, dynamic> json) =>
      _$BankDataFromJson(json);
}
