import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class AddBranchViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    context.pop();
  }

  TextEditingController sizeController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  onChanged(String? v) {
    notifyListeners();
  }
}
