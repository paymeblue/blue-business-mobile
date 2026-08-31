import 'package:blue_business/core/models/notification/get/data/get_notification_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_notification_response.freezed.dart';
part 'get_notification_response.g.dart';

@freezed
abstract class GetNotificationResponse with _$GetNotificationResponse {
  const factory GetNotificationResponse({
    @Default("fail") String status,
    String? message,
    GetNotificationData? data,
  }) = _GetNotificationResponse;

  factory GetNotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$GetNotificationResponseFromJson(json);
}
