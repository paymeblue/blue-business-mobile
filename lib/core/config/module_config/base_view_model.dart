import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/injection/navigation_service.dart';

import 'package:flutter/material.dart';

class BaseViewModel extends ChangeNotifier {
  BuildContext? get globalContext =>
      locator<NavigationService>().navigatorKey.currentContext;
  bool disposed = false;

  @override
  void dispose() {
    disposed = true;
    super.dispose();
  }

  @override
  void notifyListeners() {
    if (!disposed) {
      super.notifyListeners();
    }
  }
}
