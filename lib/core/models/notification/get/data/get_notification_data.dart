import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_notification_data.freezed.dart';
part 'get_notification_data.g.dart';

@freezed
class GetNotificationData with _$GetNotificationData {
  const factory GetNotificationData({@Default(0) int notificationStatus}) =
      _GetNotificationData;

  factory GetNotificationData.fromJson(Map<String, dynamic> json) =>
      _$GetNotificationDataImpl.fromJson(json);
}
