import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/models/business_category/category/business_category.dart';
import 'package:blue_business/core/models/business_category/response/business_category_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';

class AddBusinessNameViewModel extends BaseViewModel {
  late Size size;
  AuthService authService = AuthService();

  init(BuildContext context) {
    size = context.mediaQuery.size;

    getBusinessCategories();
  }

  List<BusinessCategory> _categories = [];
  List<BusinessCategory> get categories => _categories;
  set categories(List<BusinessCategory> c) {
    _categories = c;
    notifyListeners();
  }

  BusinessCategory? _category;
  BusinessCategory? get selectedCategory => _category;
  set selectedCategory(BusinessCategory? c) {
    _category = c;
    notifyListeners();
  }

  bool _load = false;
  bool get gettingCat => _load;
  set gettingCat(bool v) {
    _load = v;
    notifyListeners();
  }

  getBusinessCategories() async {
    gettingCat = true;
    BusinessCategoryResponse resp = await authService.getCategories().onError(
        (error, stackTrace) => BusinessCategoryResponse(
            message: AppErrorHandler.getErrorMessage(error)));

    if (resp.status == "success") {
      categories = resp.data!;
    } else {
      AppNotification.error(message: resp.message);
    }
    gettingCat = false;
  }

  onCategoryChanged(BusinessCategory? item) {
    selectedCategory = item;
  }

  TextEditingController searchController = TextEditingController();
}
