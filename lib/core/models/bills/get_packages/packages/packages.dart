import 'package:freezed_annotation/freezed_annotation.dart';

part 'packages.freezed.dart';
part 'packages.g.dart';

@freezed
abstract class BillPackage with _$BillPackage {
  const factory BillPackage({
    required int id,
    required String name,
    required String amount,
  }) = _BillPackage;

  factory BillPackage.fromJson(Map<String, dynamic> json) =>
      _$BillPackageFromJson(json);
}
