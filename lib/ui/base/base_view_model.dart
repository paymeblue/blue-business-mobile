import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/services/navigation_service.dart';
import 'package:flutter/material.dart';

class BaseViewModel extends ChangeNotifier {
  BuildContext? get appContext =>
      locator<NavigationService>().navigatorKey.currentContext;

  bool _isLoading = false;
  bool disposed = false;

  bool get isLoading => _isLoading;
  set isLoading(bool val) {
    _isLoading = val;
    notifyListeners();
  }

  void setLoading(bool val) {
    _isLoading = val;
    notifyListeners();
  }

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
