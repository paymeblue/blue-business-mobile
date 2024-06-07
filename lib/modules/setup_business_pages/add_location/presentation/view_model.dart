import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:flutter/material.dart';

class AddBusinessLocationViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  String? _state, _lga;
  String? get state => _state;
  String? get lga => _lga;

  set state(String? v) {
    _state = v;
    notifyListeners();
  }

  set lga(String? v) {
    _lga = v;
    notifyListeners();
  }

  TextEditingController searchController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  bool isActive() {
    return lga != null &&
        state != null &&
        addressController.text.isNotEmpty &&
        cityController.text.isNotEmpty;
  }
}
