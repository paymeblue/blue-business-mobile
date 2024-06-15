import 'package:blue_business/core/models/shareholders/create/data/create_shareholders_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_shareholders_response.freezed.dart';
part 'create_shareholders_response.g.dart';

@freezed
class CreateShareholdersResponse with _$CreateShareholdersResponse {
  const factory CreateShareholdersResponse({
    @Default("fail") String status,
    String? message,
    CreateShareholdersData? data,
  }) = _CreateShareholdersResponse;

  factory CreateShareholdersResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateShareholdersResponseImpl.fromJson(json);
}
