import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_data_request.freezed.dart';
part 'verify_data_request.g.dart';

@freezed
class VerifyDataRequest with _$VerifyDataRequest {
  const factory VerifyDataRequest({
    required String receiver,
    required String packageId,
  }) = _VerifyDataRequest;

  factory VerifyDataRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyDataRequestImpl.fromJson(json);
}
