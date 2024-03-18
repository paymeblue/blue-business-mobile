import 'package:blue_business/core/models/push_data/push_pay_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_pay_response.freezed.dart';
part 'push_pay_response.g.dart';

@freezed
class PushPayResponse with _$PushPayResponse {
  const factory PushPayResponse({
    @Default("fail") String status,
    String? message,
    PushPayData? data,
  }) = _PushPayResponse;

  factory PushPayResponse.fromJson(Map<String, dynamic> json) =>
      _$PushPayResponseImpl.fromJson(json);
}
