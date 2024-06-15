import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_cable_request.freezed.dart';
part 'verify_cable_request.g.dart';

@freezed
class VerifyCableRequest with _$VerifyCableRequest {
  const factory VerifyCableRequest({
    required String receiver,
    required String packageId,
  }) = _VerifyCableRequest;

  factory VerifyCableRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyCableRequestImpl.fromJson(json);
}
