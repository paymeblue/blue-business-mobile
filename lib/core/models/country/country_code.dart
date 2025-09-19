import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_code.freezed.dart';
part 'country_code.g.dart';

@freezed
abstract class CountryCode with _$CountryCode {
  const factory CountryCode({
    required String countryCode,
    required String name,
    required String dialCode,
  }) = _CountryCode;

  factory CountryCode.fromJson(Map<String, dynamic> json) =>
      _$CountryCodeFromJson(json);
}
