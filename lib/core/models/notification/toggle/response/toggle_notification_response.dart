import 'package:freezed_annotation/freezed_annotation.dart';

part 'toggle_notification_response.freezed.dart';
part 'toggle_notification_response.g.dart';

@freezed
class ToggleNotificationResponse with _$ToggleNotificationResponse {
  const factory ToggleNotificationResponse({
    @Default("fail") String status,
    String? message,
  }) = _ToggleNotificationResponse;

  factory ToggleNotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$ToggleNotificationResponseImpl.fromJson(json);
}
