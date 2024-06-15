import 'package:blue_business/core/models/bills/airtime/vend/data/vend_airtime_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vend_airtime_response.freezed.dart';
part 'vend_airtime_response.g.dart';

@freezed
class VendAirtimeResponse with _$VendAirtimeResponse {
  const factory VendAirtimeResponse({
    @Default("fail") String status,
    String? message,
    VendAirtimeData? data,
  }) = _VendAirtimeResponse;

  factory VendAirtimeResponse.fromJson(Map<String, dynamic> json) =>
      _$VendAirtimeResponseImpl.fromJson(json);
}
