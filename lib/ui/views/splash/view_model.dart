import 'dart:async';

import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:provider/provider.dart';

class SplashViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  // late AuthStateManager authStateManager;

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
    "The easiest way to make payments!",
    "Send, request and receive money swiftly",
    "Free charges, No hidden fees!"
  ];

  init() async {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    // authStateManager =
    //     Provider.of<AuthStateManager>(appContext!, listen: false);

    Future.delayed(const Duration(milliseconds: 1500), () {
      containerHeight = 390;
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
