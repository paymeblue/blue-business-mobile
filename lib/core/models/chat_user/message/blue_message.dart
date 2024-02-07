import 'package:freezed_annotation/freezed_annotation.dart';

part 'blue_message.freezed.dart';
part 'blue_message.g.dart';

@freezed
class BlueMessage with _$BlueMessage {
  const factory BlueMessage({
    required String message,
    required String senderId,
    required String timeStamp,
  }) = _BlueMessage;

  factory BlueMessage.fromJson(Map<String, dynamic> json) =>
      _$BlueMessageImpl.fromJson(json);
}
