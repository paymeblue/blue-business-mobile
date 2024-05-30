import 'package:freezed_annotation/freezed_annotation.dart';

part 'vend_data_request.freezed.dart';
part 'vend_data_request.g.dart';

@freezed
class VendDataRequest with _$VendDataRequest {
  const factory VendDataRequest({
    required String transactionId,
    required String passcode,
  }) = _VendDataRequest;

  factory VendDataRequest.fromJson(Map<String, dynamic> json) =>
      _$VendDataRequestImpl.fromJson(json);
}
