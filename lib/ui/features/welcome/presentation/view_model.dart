import 'dart:async';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class WelcomeViewModel extends BaseViewModel {
  late Size size;

  init() {
    size = MediaQuery.sizeOf(globalContext!);
    changeText();
  }

  int _index = 0;
  int get index => _index;

  set index(int v) {
    _index = v;
    notifyListeners();
  }

  List<String> onboardingText = [
    "Your all-in-one business manager app!",
    "Add and manage your Team seamlessly",
    "Boost your business sales with data driven insights.",
    "Simplify your daily settlement tracking",
  ];

  List<String> onboardingSubtext = [
    "Streamline your business operations with simplicity and efficiency!",
    "Easily add and oversee your team members for seamless operations.",
    "Improve your revenue generating strategies with data driven insights.",
    "Automate and manage your day-to-day transactions with ease.",
  ];

  changeText() {
    Timer.periodic(const Duration(milliseconds: 3500), (timer) {
      if (index == onboardingText.length - 1) {
        index = 0;
      } else {
        index++;
      }
    });
  }

  goToLogin(BuildContext context) {
    context.push(RoutePaths.login);
  }

  launchTerms() async {
    await launchUrl(
      Uri.parse("https://paymeblue.com/terms-and-conditions"),
      mode: LaunchMode.inAppWebView,
    );
  }

  launchPrivacy() async {
    await launchUrl(
      Uri.parse("https://paymeblue.com/privacy"),
      mode: LaunchMode.inAppWebView,
    );
  }

  goToSignup(BuildContext context) {
    context.push(RoutePaths.initiateSignup);
  }
}
