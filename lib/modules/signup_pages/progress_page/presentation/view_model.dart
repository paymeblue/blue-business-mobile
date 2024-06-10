import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupProgressViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goToNext(BuildContext context) {
    context.push(RoutePaths.registerBusinessDetailsPath);
  }

  setProgress(SignupData data) {
    if (data.businessProfileCompleted) {
      progress = 1;
    }
    if (data.businessDetailsCompleted) {
      progress = 2;
    }
    if (data.businessKycCompleted) {
      progress = 3;
    }
  }

  int _progress = 0;
  int get progress => _progress;
  set progress(int n) {
    _progress = n;
    notifyListeners();
  }

  List<Map<String, dynamic>> progressSteps = [
    {
      "title": "Create Profile",
      "subtitle": "Create profile with your phone number, and password.",
    },
    {
      "title": "Business & Owner Details",
      "subtitle":
          "Provide us with your business name, size, CAC number and address.",
    },
    {
      "title": "KYC Verification",
      "subtitle":
          "Verify your identify as the owner/shareholder of the business.",
    }
  ];
}
