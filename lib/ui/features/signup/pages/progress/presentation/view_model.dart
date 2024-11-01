import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupProgressViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context, SignupData data) {
    size = context.mediaQuery.size;
    setProgress(data);
  }

  goBack(BuildContext context) {
    context.pop();
  }

  goToNext(BuildContext context, SignupData data) {
    if (progress == 1) {
      context.push(RoutePaths.businessDetails, extra: data);
    } else if (progress == 2) {
      context.push(RoutePaths.shareholders, extra: data);
    } else {
      context.push(RoutePaths.createPin, extra: data);
    }
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

  int _progress = 1;
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
