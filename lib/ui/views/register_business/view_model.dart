import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/enter_branding.dart';
import 'pages/enter_profile.dart';

class RegisterBusinessViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late AuthStateManager authStateManager;
  late Size size;

  init() {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    authStateManager =
        Provider.of<AuthStateManager>(appContext!, listen: false);

    size = MediaQuery.of(appContext!).size;
  }

  String _name = "", _description = "", _address = "", _city = "";
  String get name => _name;
  String get description => _description;
  String get address => _address;
  String get city => _city;

  set name(String n) {
    _name = n;
    notifyListeners();
  }

  set description(String d) {
    _description = d;
    notifyListeners();
  }

  set address(String ad) {
    _address = ad;
    notifyListeners();
  }

  set city(String c) {
    _city = city;
    notifyListeners();
  }

  TextEditingController categoryController = TextEditingController();
  TextEditingController localGovController = TextEditingController();
  TextEditingController stateController = TextEditingController();

  String? onNameChanged(String? v) {
    name = v ?? "";
    setActive();
    return v;
  }

  String? onNameSaved(String? v) {
    name = v ?? "";
    setActive();
    return v;
  }

  String? onDescChanged(String? v) {
    description = v ?? "";
    setActive();
    return v;
  }

  String? onDescSaved(String? v) {
    description = v ?? "";
    setActive();
    return v;
  }

  List<GlobalKey<FormState>> formKeys =
      List.generate(4, (index) => GlobalKey<FormState>());

  List<Widget> pages = [
    const EnterProfileView(),
    const EnterBrandingView(),
  ];

  List<String> _categories = [];
  List<String> get categories => _categories;
  set categories(List<String> c) {
    _categories = c;
    notifyListeners();
  }

  handleBackTap() {
    if (authStateManager.registerBusinessIndex == 0) {
      appStateManager.registerBusiness = false;
    } else {
      authStateManager.registerBusinessIndex--;
    }
  }

  List<String> sizes = ["Less than 10", "10 - 49", "50 - 249", "250 or more"];

  String _size = "";
  String get selectedSize => _size;
  set selectedSize(String s) {
    _size = s;
    notifyListeners();
  }

  handleTap() {
    if (authStateManager.registerBusinessIndex < pages.length - 1) {
      authStateManager.registerBusinessIndex++;
      isActive = false;
    } else {}
  }

  bool _isActive = false;
  bool get isActive => _isActive;

  set isActive(bool v) {
    _isActive = v;
    notifyListeners();
  }

  bool _isExpanded = false;
  bool get isExpanded => _isExpanded;

  set isExpanded(bool v) {
    _isExpanded = v;
    notifyListeners();
  }

  setActive() {
    switch (authStateManager.registerBusinessIndex) {
      case 0:
        isActive = name.isNotEmpty &&
            categoryController.text.isNotEmpty &&
            description.isNotEmpty;
        break;
      case 1:
        isActive = selectedSize.isNotEmpty;
    }
  }
}
