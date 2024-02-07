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
    @Default(0) int notificationStatus,
    String? middleName,
    String? displayPic,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserImpl.fromJson(json);
}
