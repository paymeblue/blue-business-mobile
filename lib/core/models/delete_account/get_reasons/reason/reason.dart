import 'package:freezed_annotation/freezed_annotation.dart';

part 'reason.freezed.dart';
part 'reason.g.dart';

@freezed
class Reason with _$Reason {
  const factory Reason({
    required int id,
    required String content,
  }) = _Reason;

  factory Reason.fromJson(Map<String, dynamic> json) =>
      _$ReasonImpl.fromJson(json);
}
