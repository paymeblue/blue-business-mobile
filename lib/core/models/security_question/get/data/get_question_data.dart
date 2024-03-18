import 'package:blue_business/core/models/security_question/get/question/security_question.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_question_data.freezed.dart';
part 'get_question_data.g.dart';

@freezed
class GetQuestionData with _$GetQuestionData {
  const factory GetQuestionData({
    required SecurityQuestion question,
  }) = _GetQuestionData;

  factory GetQuestionData.fromJson(Map<String, dynamic> json) =>
      _$GetQuestionDataImpl.fromJson(json);
}
