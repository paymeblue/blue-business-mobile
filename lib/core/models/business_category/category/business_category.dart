import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_category.freezed.dart';
part 'business_category.g.dart';

@freezed
class BusinessCategory with _$BusinessCategory {
  const factory BusinessCategory({
    required int id,
    required String title,
  }) = _BusinessCategory;

  factory BusinessCategory.fromJson(Map<String, dynamic> json) =>
      _$BusinessCategoryImpl.fromJson(json);
}
