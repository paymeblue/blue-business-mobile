import 'package:blue_business/core/models/shareholders/get/data/shareholders.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_shareholders_response.freezed.dart';
part 'get_shareholders_response.g.dart';

@freezed
class GetShareholdersResponse with _$GetShareholdersResponse {
  const factory GetShareholdersResponse({
    @Default("fail") String status,
    String? message,
    List<Shareholders>? data,
  }) = _GetShareholdersResponse;

  factory GetShareholdersResponse.fromJson(Map<String, dynamic> json) =>
      _$GetShareholdersResponseImpl.fromJson(json);
}
