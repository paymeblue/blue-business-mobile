import 'package:blue_business/core/config/module/base_view_model.dart';

import 'package:flutter/material.dart';

class BranchInsightsViewModel extends BaseViewModel {
  late String branchId;

  init(BuildContext context, String id) {
    branchId = id;
    selectedType = types[0];
  }

  List<String> types = ["Weekly", "Monthly", "Yearly"];

  late String _type;
  String get selectedType => _type;
  set selectedType(String v) {
    _type = v;
    notifyListeners();
  }

  onTypeChanged(String t) {
    selectedType = t;
  }
}
