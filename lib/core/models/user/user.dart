import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String firstName,
    required String lastName,
    required String phone,
    required BusinessProfile businessProfile,
    @Default("role") String role,
    @Default(0) int notificationStatus,
    String? middleName,
    String? displayPic,
    @Default("business") String type,
    // @Default(0) int businessProfileLevel,
    // required int businessProfileId,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserImpl.fromJson(json);
}
