import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_data.freezed.dart';
part 'business_data.g.dart';

@freezed
class BusinessData with _$BusinessData {
  const factory BusinessData({
    required String name,
    required String cacNumber,
    required String category,
  }) = _BusinessData;

  factory BusinessData.fromJson(Map<String, dynamic> json) =>
      _$BusinessDataImpl.fromJson(json);
}
