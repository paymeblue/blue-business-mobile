import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_receiver_data.freezed.dart';
part 'chat_receiver_data.g.dart';

@freezed
class ChatResponseData with _$ChatResponseData {
  const factory ChatResponseData({
    required String firstName,
    required String lastName,
    String? displayPic,
    required String walletCode,
    required String fcmToken,
  }) = _ChatResponseData;

  factory ChatResponseData.fromJson(Map<String, dynamic> json) =>
      _$ChatResponseDataImpl.fromJson(json);
}
