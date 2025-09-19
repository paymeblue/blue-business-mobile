import 'package:freezed_annotation/freezed_annotation.dart';

part 'providers.freezed.dart';
part 'providers.g.dart';

@freezed
abstract class BillProvider with _$BillProvider {
  const factory BillProvider({
    required int id,
    required String name,
    String? image,
  }) = _BillProvider;

  factory BillProvider.fromJson(Map<String, dynamic> json) =>
      _$BillProviderFromJson(json);
}
