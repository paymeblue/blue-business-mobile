import 'package:freezed_annotation/freezed_annotation.dart';

part 'shareholders.freezed.dart';
part 'shareholders.g.dart';

@freezed
abstract class Shareholders with _$Shareholders {
  const factory Shareholders({
    required int id,
    required int businessId,
    required String name,
    @Default(false) bool verified,
    @Default("WITNESS") String designation,
    String? bvn,
    String? phone,
    String? createdAt,
    String? address,
  }) = _Shareholders;

  factory Shareholders.fromJson(Map<String, dynamic> json) =>
      _$ShareholdersFromJson(json);
}
