import 'package:blue_business/core/models/shareholders/get/data/shareholders.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_business_profile_data.freezed.dart';
part 'create_business_profile_data.g.dart';

@freezed
class CreateBusinessProfileData with _$CreateBusinessProfileData {
  const factory CreateBusinessProfileData({
    required int id,
    required String phone,
    required int level,
    @Default(false) bool businessProfileCompleted,
    @Default(false) bool businessDetailsCompleted,
    @Default(false) bool businessKycCompleted,
    @Default([]) List<Shareholders> shareholders,
    String? createdAt,
  }) = _CreateBusinessProfileData;

  factory CreateBusinessProfileData.fromJson(Map<String, dynamic> json) =>
      _$CreateBusinessProfileDataImpl.fromJson(json);
}
