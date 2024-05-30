import 'package:freezed_annotation/freezed_annotation.dart';

part 'vend_airtime_request.freezed.dart';
part 'vend_airtime_request.g.dart';

@freezed
class VendAirtimeRequest with _$VendAirtimeRequest {
  const factory VendAirtimeRequest({
    required String receiver,
    required String passcode,
    required String amount,
    required String providerId,
  }) = _VendAirtimeRequest;

  factory VendAirtimeRequest.fromJson(Map<String, dynamic> json) =>
      _$VendAirtimeRequestImpl.fromJson(json);
}
