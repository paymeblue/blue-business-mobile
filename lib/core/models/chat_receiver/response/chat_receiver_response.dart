import 'package:blue_business/core/models/chat_receiver/data/chat_receiver_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_receiver_response.freezed.dart';
part 'chat_receiver_response.g.dart';

@freezed
class ChatReceiverResponse with _$ChatReceiverResponse {
  const factory ChatReceiverResponse({
    @Default("fail") String status,
    String? message,
    ChatResponseData? data,
  }) = _ChatReceiverResponse;

  factory ChatReceiverResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatReceiverResponseImpl.fromJson(json);
}
