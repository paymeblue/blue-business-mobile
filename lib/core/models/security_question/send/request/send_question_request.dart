import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_question_request.freezed.dart';
part 'send_question_request.g.dart';

@freezed
class SendQuestionRequest with _$SendQuestionRequest {
  const factory SendQuestionRequest({
    required String phone,
    required String answer,
  }) = _SendQuestionRequest;

  factory SendQuestionRequest.fromJson(Map<String, dynamic> json) =>
      _$SendQuestionRequestImpl.fromJson(json);
}
