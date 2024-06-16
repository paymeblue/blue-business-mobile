import 'package:freezed_annotation/freezed_annotation.dart';

part 'recover_phone_data.freezed.dart';
part 'recover_phone_data.g.dart';

@freezed
class SendNewPhoneData with _$SendNewPhoneData {
  const factory SendNewPhoneData({
    required String reference,
    required String newPhone,
  }) = _SendNewPhoneData;

  factory SendNewPhoneData.fromJson(Map<String, dynamic> json) =>
      _$SendNewPhoneDataImpl.fromJson(json);
}
