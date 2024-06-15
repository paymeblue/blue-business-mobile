import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_data.freezed.dart';
part 'signup_data.g.dart';

@freezed
class SignupData with _$SignupData {
  const factory SignupData({
    required int id,
    required String phone,
    required int level,
    @Default(false) bool businessProfileCompleted,
    @Default(false) bool businessDetailsCompleted,
    @Default(false) bool businessKycCompleted,
    int? businessId,
    String? createdAt,
  }) = _SignupData;

  factory SignupData.fromJson(Map<String, dynamic> json) =>
      _$SignupDataImpl.fromJson(json);
}
