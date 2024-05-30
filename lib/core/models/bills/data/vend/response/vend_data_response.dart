import 'package:blue_business/core/models/bills/data/vend/data/vend_data_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vend_data_response.freezed.dart';
part 'vend_data_response.g.dart';

@freezed
class VendDataResponse with _$VendDataResponse {
  const factory VendDataResponse({
    @Default("fail") String status,
    String? message,
    VendDataData? data,
  }) = _VendDataResponse;

  factory VendDataResponse.fromJson(Map<String, dynamic> json) =>
      _$VendDataResponseImpl.fromJson(json);
}
