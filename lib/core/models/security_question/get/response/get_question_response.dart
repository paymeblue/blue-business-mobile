import 'package:blue_business/core/models/security_question/get/data/get_question_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_question_response.freezed.dart';
part 'get_question_response.g.dart';

@freezed
class GetQuestionResponse with _$GetQuestionResponse {
  const factory GetQuestionResponse({
    @Default(false) bool success,
    String? message,
    GetQuestionData? data,
  }) = _GetQuestionResponse;

  factory GetQuestionResponse.fromJson(Map<String, dynamic> json) =>
      _$GetQuestionResponseImpl.fromJson(json);
}
