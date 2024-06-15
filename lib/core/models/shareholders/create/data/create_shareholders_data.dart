import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_shareholders_data.freezed.dart';
part 'create_shareholders_data.g.dart';

@freezed
class CreateShareholdersData with _$CreateShareholdersData {
  const factory CreateShareholdersData({
    required String name,
    required String bvn,
    required int id,
    @Default(false) bool verified,
    String? createdAt,
  }) = _CreateShareholdersData;

  factory CreateShareholdersData.fromJson(Map<String, dynamic> json) =>
      _$CreateShareholdersDataImpl.fromJson(json);
}
