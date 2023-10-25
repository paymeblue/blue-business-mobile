import 'dart:async';

import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:provider/provider.dart';

class SplashViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late AuthStateManager authStateManager;

  double _height = 0;
  double get containerHeight => _height;

  set containerHeight(double v) {
    _height = v;
    notifyListeners();
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
    "Boost your business sales with our POS Terminal.",
    "Simplify your daily settlement tracking"
  ];

  List<String> onboardingSubText = [
    "Streamline your business operations with simplicity and efficiency!",
    "Easily add and oversee your team members for seamless operations.",
    "Provide your customers with a seamless payment experience at all times.",
    "Automate and manage your day-to-day transactions with ease."
  ];

  init() async {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    authStateManager =
        Provider.of<AuthStateManager>(appContext!, listen: false);

    Future.delayed(const Duration(milliseconds: 1500), () {
      containerHeight = 435;
      changeText();
    });

    // await authStateManager.getDataFromStorage();
  }

  changeText() {
    Timer.periodic(const Duration(milliseconds: 3500), (timer) {
      if (index == onboardingText.length - 1) {
        index = 0;
      } else {
        index++;
      }
    });
  }

  // goToLogin() {
  //   appStateManager.login = true;
  // }

  // goToSignup() {
  //   appStateManager.openSignup(appContext!);
  // }

  // goToQuickPay() {
  //   appStateManager.quickPay = true;
  // }
}
