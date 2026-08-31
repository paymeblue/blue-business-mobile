import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank.freezed.dart';
part 'bank.g.dart';

@freezed
abstract class BankItem with _$BankItem {
  const factory BankItem({
    required int id,
    required String name,
    String? logoUrl,
  }) = _BankItem;

  factory BankItem.fromJson(Map<String, dynamic> json) =>
      _$BankItemFromJson(json);
}
