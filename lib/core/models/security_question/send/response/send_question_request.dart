import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_question_request.freezed.dart';
part 'send_question_request.g.dart';

@freezed
class SendQuestionResponse with _$SendQuestionResponse {
  const factory SendQuestionResponse({
    @Default("fail") String status,
    String? message,
  }) = _SendQuestionResponse;

  factory SendQuestionResponse.fromJson(Map<String, dynamic> json) =>
      _$SendQuestionResponseImpl.fromJson(json);
}
