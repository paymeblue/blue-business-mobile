import 'package:freezed_annotation/freezed_annotation.dart';

part 'busines_name_data.freezed.dart';
part 'busines_name_data.g.dart';

@freezed
class BusinessNameData with _$BusinessNameData {
  const factory BusinessNameData({
    required int id,
    required int userId,
    required int level,
    required String createdAt,
  }) = _BusinessNameData;

  factory BusinessNameData.fromJson(Map<String, dynamic> json) =>
      _$BusinessNameDataImpl.fromJson(json);
}
