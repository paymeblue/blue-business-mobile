import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/models/signup_profile/request/signup_profile_request.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddPersonalInfoViewModel extends BaseViewModel {
  late Size size;
  late String id;

  init(BuildContext context, String i) {
    size = context.mediaQuery.size;
    id = i;
  }

  late SignupProfileRequest _request;
  SignupProfileRequest get request => _request;
  set request(SignupProfileRequest req) {
    _request = req;
    notifyListeners();
  }

  goToNext(BuildContext context) {
    request = SignupProfileRequest(
      firstName: firstNameController.text,
      lastName: lastNameController.text,
      middleName:
          middleNameController.text.isEmpty ? null : middleNameController.text,
    );
    context.go("/$id${RoutePaths.createPasswordPath}", extra: request);
  }

  TextEditingController firstNameController = TextEditingController();
  TextEditingController middleNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  onChanged(String? v) {
    notifyListeners();
  }
}
