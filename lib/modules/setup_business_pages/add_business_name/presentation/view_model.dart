import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/business_category/category/business_category.dart';
import 'package:blue_business/core/models/business_category/response/business_category_response.dart';
import 'package:blue_business/core/models/create_business_profile/name/request/busines_name_request.dart';
import 'package:blue_business/core/models/create_business_profile/name/response/busines_name_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddBusinessNameViewModel extends BaseViewModel {
  late Size size;

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
    BusinessCategoryResponse resp =
        await AuthService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .getCategories()
            .onError((error, stackTrace) => BusinessCategoryResponse(
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
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  onChanged(String? v) {
    notifyListeners();
  }

  bool isActive() {
    return nameController.text.isNotEmpty &&
        descriptionController.text.isNotEmpty &&
        selectedCategory != null;
  }

  sendName(BuildContext context) async {
    AppLoader.start();

    BusinessNameRequest request = BusinessNameRequest(
        name: nameController.text,
        categoryId: selectedCategory!.id.toString(),
        description: descriptionController.text);

    BusinessNameResponse resp =
        await AuthService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .addBusinessName(request)
            .onError((error, stackTrace) => BusinessNameResponse(
                message: AppErrorHandler.getErrorMessage(error)));

    if (resp.status == "success") {
      if (context.mounted) {
        context.go("${RoutePaths.businessSizePath}/${resp.data!.id}");
      }
    } else {
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();
  }
}
