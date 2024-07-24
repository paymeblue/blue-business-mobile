import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_question_data.freezed.dart';
part 'get_question_data.g.dart';

@freezed
class GetQuestionData with _$GetQuestionData {
  const factory GetQuestionData({
    required int id,
    required int userId,
    required String question,
    String? createdAt,
  }) = _GetQuestionData;

  factory GetQuestionData.fromJson(Map<String, dynamic> json) =>
      _$GetQuestionDataImpl.fromJson(json);
}
