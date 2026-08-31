import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_question_request.freezed.dart';
part 'create_question_request.g.dart';

@freezed
abstract class CreateQuestionRequest with _$CreateQuestionRequest {
  const factory CreateQuestionRequest({
    required String question,
    required String answer,
    required String password,
  }) = _CreateQuestionRequest;

  factory CreateQuestionRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateQuestionRequestFromJson(json);
}
