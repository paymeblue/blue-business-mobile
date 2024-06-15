import 'package:blue_business/core/io/storage/keys.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) async {
    size = MediaQuery.sizeOf(globalContext!);

    await StorageValues.getLoginValues();
    if (context.mounted) context.go(RoutePaths.welcomePath);
  }
}
