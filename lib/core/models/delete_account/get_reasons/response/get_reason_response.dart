import 'package:blue_business/core/models/delete_account/get_reasons/reason/reason.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_reason_response.freezed.dart';
part 'get_reason_response.g.dart';

@freezed
class GetReasonResponse with _$GetReasonResponse {
  const factory GetReasonResponse({
    @Default(false) bool success,
    String? message,
    List<Reason>? data,
  }) = _GetReasonResponse;

  factory GetReasonResponse.fromJson(Map<String, dynamic> json) =>
      _$GetReasonResponseImpl.fromJson(json);
}
