import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
abstract class Chat with _$Chat {
  const factory Chat({
    required String channelId,
    required String sender,
    required String receiver,
    required String timeStamp,
    required String fcmToken,
    required String senderName,
    required String peerToken,
    @Default("message") String updateType,
    String? message,
    @Default(0) int unreadCount,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}
