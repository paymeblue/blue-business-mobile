import 'package:blue_business/core/models/bills/get_packages/packages/packages.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_packages_response.freezed.dart';
part 'get_packages_response.g.dart';

@freezed
class GetPackagesResponse with _$GetPackagesResponse {
  const factory GetPackagesResponse({
    @Default("fail") String status,
    String? message,
    List<BillPackage>? data,
  }) = _GetPackagesResponse;

  factory GetPackagesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPackagesResponseImpl.fromJson(json);
}
