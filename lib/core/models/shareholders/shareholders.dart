import 'package:freezed_annotation/freezed_annotation.dart';

part 'shareholders.freezed.dart';
part 'shareholders.g.dart';

@freezed
class Shareholders with _$Shareholders {
  const factory Shareholders({
    required int id,
    required int businessId,
    required String name,
    required String address,
    @Default(false) bool verified,
    @Default("WITNESS") String designation,
    String? bvn,
    String? phone,
    String? createdAt,
  }) = _Shareholders;

  factory Shareholders.fromJson(Map<String, dynamic> json) =>
      _$ShareholdersImpl.fromJson(json);
}

//         "business_id": 1,
//         "name": "PETER DOE",
//         "address": "8C, NONE STREET, ZONE 4",
//         "phone": null,
//         "bvn": null,
//         "verified": false,
//         "designation": "WITNESS",
//         "created_at": "2024-05-27T22:19:39.000Z"
