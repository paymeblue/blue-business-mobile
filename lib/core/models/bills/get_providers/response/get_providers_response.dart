import 'package:blue_business/core/models/bills/get_providers/providers/providers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_providers_response.freezed.dart';
part 'get_providers_response.g.dart';

@freezed
abstract class GetProvidersResponse with _$GetProvidersResponse {
  const factory GetProvidersResponse({
    @Default("fail") String status,
    String? message,
    List<BillProvider>? data,
  }) = _GetProvidersResponse;

  factory GetProvidersResponse.fromJson(Map<String, dynamic> json) =>
      _$GetProvidersResponseFromJson(json);
}
