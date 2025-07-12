import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/material.dart';

class SignupProgressViewModel extends BaseViewModel {
  late Size size;
  late SignupData data;

  init(BuildContext context, SignupData d) {
    size = context.mediaQuery.size;
    data = d;
    setProgress();
  }

  goBack(BuildContext context) {
    context.router.back();
  }

  goToNext(BuildContext context) {
    if (progress == 1) {
      context.push<SignupData>(RoutePaths.businessDetails, extra: data).then(
            onSignupDataReturned,
          );
    } else if (progress == 2) {
      context.push<SignupData>(RoutePaths.shareholders, extra: data).then(
            onSignupDataReturned,
          );
    } else {
      context.push<SignupData>(RoutePaths.createPin, extra: data).then(
            onSignupDataReturned,
          );
    }
  }

  onSignupDataReturned(SignupData? val) {
    if (val != null) {
      data = val;
      setProgress();
    }
  }

  setProgress() {
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
