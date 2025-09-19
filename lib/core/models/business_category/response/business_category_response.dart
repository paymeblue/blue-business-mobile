import 'package:blue_business/core/models/business_category/category/business_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_category_response.freezed.dart';
part 'business_category_response.g.dart';

@freezed
abstract class BusinessCategoryResponse with _$BusinessCategoryResponse {
  const factory BusinessCategoryResponse({
    @Default("fail") String status,
    String? message,
    List<BusinessCategory>? data,
  }) = _BusinessCategoryResponse;

  factory BusinessCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$BusinessCategoryResponseFromJson(json);
}
