import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';

import 'package:flutter/material.dart';

class BaseViewModel extends ChangeNotifier {
  BuildContext? get globalContext =>
      locator<AppRouter>().navigatorKey.currentContext;
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
