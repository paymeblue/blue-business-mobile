import 'package:freezed_annotation/freezed_annotation.dart';

part 'recover_phone_request.freezed.dart';
part 'recover_phone_request.g.dart';

@freezed
abstract class SendNewPhoneRequest with _$SendNewPhoneRequest {
  const factory SendNewPhoneRequest({
    required String phone,
    required String userId,
  }) = _SendNewPhoneRequest;

  factory SendNewPhoneRequest.fromJson(Map<String, dynamic> json) =>
      _$SendNewPhoneRequestFromJson(json);
}
