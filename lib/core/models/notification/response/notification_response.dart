import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_response.freezed.dart';
part 'notification_response.g.dart';

@freezed
class NotificationResponse with _$NotificationResponse {
  const factory NotificationResponse({
    @Default(false) bool success,
    String? message,
  }) = _NotificationResponse;

  factory NotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseImpl.fromJson(json);
}
