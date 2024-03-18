import 'package:freezed_annotation/freezed_annotation.dart';

part 'security_question.freezed.dart';
part 'security_question.g.dart';

@freezed
class SecurityQuestion with _$SecurityQuestion {
  const factory SecurityQuestion({
    required int id,
    required String question,
  }) = _SecurityQuestion;

  factory SecurityQuestion.fromJson(Map<String, dynamic> json) =>
      _$SecurityQuestionImpl.fromJson(json);
}
