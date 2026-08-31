import 'package:blue_business/core/models/bills/cable/vend/data/vend_cable_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vend_cable_response.freezed.dart';
part 'vend_cable_response.g.dart';

@freezed
abstract class VendCableResponse with _$VendCableResponse {
  const factory VendCableResponse({
    @Default("fail") String status,
    String? message,
    VendCableData? data,
  }) = _VendCableResponse;

  factory VendCableResponse.fromJson(Map<String, dynamic> json) =>
      _$VendCableResponseFromJson(json);
}
