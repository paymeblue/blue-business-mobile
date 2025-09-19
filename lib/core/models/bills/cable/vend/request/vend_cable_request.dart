import 'package:freezed_annotation/freezed_annotation.dart';

part 'vend_cable_request.freezed.dart';
part 'vend_cable_request.g.dart';

@freezed
abstract class VendCableRequest with _$VendCableRequest {
  const factory VendCableRequest({
    required String transactionId,
    required String passcode,
  }) = _VendCableRequest;

  factory VendCableRequest.fromJson(Map<String, dynamic> json) =>
      _$VendCableRequestFromJson(json);
}
