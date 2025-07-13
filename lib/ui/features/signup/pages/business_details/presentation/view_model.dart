import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/business_category/category/business_category.dart';
import 'package:blue_business/core/models/business_category/response/business_category_response.dart';
import 'package:blue_business/core/models/create_business_profile/request/create_business_profile_request.dart';
import 'package:blue_business/core/models/create_business_profile/response/create_business_profile_response.dart';
import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';

class AddBusinessDetailsViewModel extends BaseViewModel {
  late Size size;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  init(BuildContext context, SignupData d) {
    size = context.mediaQuery.size;
    data = d;

    getBusinessCategories();
  }

  goBack(BuildContext context) {
    locator<AppRouter>().maybePop(data);
  }

  late SignupData data;

  BusinessCategory? _category;
  BusinessCategory? get category => _category;
  set category(BusinessCategory? c) {
    _category = c;
    notifyListeners();
  }

  List<BusinessCategory> _categories = [];
  List<BusinessCategory> get categories => _categories;
  set categories(List<BusinessCategory> c) {
    _categories = c;
    notifyListeners();
  }

  FetchState _categoryFetchState = FetchState.complete;
  FetchState get categoryFetchState => _categoryFetchState;
  set categoryFetchState(FetchState s) {
    _categoryFetchState = s;
    notifyListeners();
  }

  getBusinessCategories() async {
    categoryFetchState = FetchState.loading;
    BusinessCategoryResponse response = await AuthService()
        .getCategories()
        .onError((error, stackTrace) => BusinessCategoryResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "get_categories",
                "response_model": "BusinessCategoryResponse"
              },
            )));

    if (response.status == "success") {
      categories = response.data ?? [];
      categoryFetchState = FetchState.complete;
    } else {
      AppNotification.error(message: response.message);
      categoryFetchState = FetchState.error;
    }
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController cacController = TextEditingController();
  TextEditingController searchController = TextEditingController();

  onChanged(String? v) {
    notifyListeners();
  }

  List<String> sizes = ["< 9", "10 - 49", "50 - 249", "> 250"];

  String? _staffSize;
  String? get staffSize => _staffSize;
  set staffSize(String? s) {
    _staffSize = s;
    notifyListeners();
  }

  bool isActive() {
    return nameController.text.trim().isNotEmpty &&
        cacController.text.trim().isNotEmpty &&
        staffSize != null &&
        category != null;
  }

  createBusinessProfile(BuildContext context) async {
    AppLoader.start();
    CreateBusinessProfileRequest request = CreateBusinessProfileRequest(
      userId: data.id,
      name: nameController.text,
      categoryId: category!.id,
      cacNumber: cacController.text,
      staffSize: staffSize!,
    );

    CreateBusinessProfileResponse response = await AuthService()
        .createBusinessProfile(request: request)
        .onError((error, stackTrace) => CreateBusinessProfileResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "create_business_profile",
                "request": request.toString(),
                "response_model": "CreateBusinessProfileResponse"
              },
            )));

    if (response.status == "success") {
      data = data.copyWith(
          businessDetailsCompleted: true,
          businessId: response.data!.businessId);

      if (context.mounted) goToNext(context);
    } else {
      AppNotification.error(message: response.message);
    }

    AppLoader.stop();
  }

  goToNext(BuildContext context) {
    locator<AppRouter>().replace(SelectShareholderRoute(data: data));
  }
}
