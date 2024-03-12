import 'package:freezed_annotation/freezed_annotation.dart';

part 'busines_size_request.freezed.dart';
part 'busines_size_request.g.dart';

@freezed
class BusinessSizeRequest with _$BusinessSizeRequest {
  const factory BusinessSizeRequest({
    required int staffSizeMin,
    required int staffSizeMax,
  }) = _BusinessSizeRequest;

  factory BusinessSizeRequest.fromJson(Map<String, dynamic> json) =>
      _$BusinessSizeRequestImpl.fromJson(json);
}
