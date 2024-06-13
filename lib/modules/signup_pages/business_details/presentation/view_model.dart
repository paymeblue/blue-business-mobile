import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/business_category/category/business_category.dart';
import 'package:blue_business/core/models/business_category/response/business_category_response.dart';
import 'package:blue_business/core/models/create_business_profile/request/create_business_profile_request.dart';
import 'package:blue_business/core/models/create_business_profile/response/create_business_profile_response.dart';
import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupBusinessDetailsViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
    getBusinessCategories();
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController cacController = TextEditingController();
  TextEditingController searchController = TextEditingController();

  onChanged(String? v) {
    notifyListeners();
  }

  goToNext(BuildContext context, SignupData data) {
    context.push(RoutePaths.registerShareholdersPath, extra: data);
  }

  bool _gettingCat = false;
  bool get gettingCat => _gettingCat;
  set gettingCat(bool v) {
    _gettingCat = v;
    notifyListeners();
  }

  List<String> sizes = ["< 9", "10 - 49", "50 - 249", "> 250"];

  String? _staffSize;
  String? get staffSize => _staffSize;
  set staffSize(String? s) {
    _staffSize = s;
    notifyListeners();
  }

  List<BusinessCategory> _categories = [];
  List<BusinessCategory> get categories => _categories;
  set categories(List<BusinessCategory> c) {
    _categories = c;
    notifyListeners();
  }

  BusinessCategory? _category;
  BusinessCategory? get category => _category;
  set category(BusinessCategory? c) {
    _category = c;
    notifyListeners();
  }

  getBusinessCategories() async {
    gettingCat = true;
    BusinessCategoryResponse response = await AuthService(DioConfig.dio())
        .getCategories()
        .onError((error, stackTrace) => BusinessCategoryResponse(
            message: AppErrorHandler.getErrorMessage(error)));

    if (response.status == "success") {
      categories = response.data ?? [];
    } else {
      AppNotification.error(message: response.message);
    }

    gettingCat = false;
  }

  createBusinessProfile(BuildContext context, SignupData data) async {
    AppLoader.start();
    CreateBusinessProfileRequest request = CreateBusinessProfileRequest(
      userId: data.id,
      name: nameController.text,
      categoryId: category!.id,
      cacNumber: cacController.text,
      staffSize: staffSize!,
    );

    CreateBusinessProfileResponse response = await AuthService(DioConfig.dio())
        .createBusinessProfile(request: request)
        .onError((error, stackTrace) => CreateBusinessProfileResponse(
            message: AppErrorHandler.getErrorMessage(error)));

    if (response.status == "success") {
      if (context.mounted) goToNext(context, data);
    } else {
      AppNotification.error(message: response.message);
    }

    AppLoader.stop();
  }

  bool isActive() {
    return nameController.text.isNotEmpty &&
        cacController.text.length >= 10 &&
        staffSize != null &&
        category != null;
  }
}
