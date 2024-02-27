import 'dart:developer';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class UpdateKycViewModel extends BaseViewModel {
  late Size size;
  AppStateValues stateValues = locator<AppStateValues>();

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.go(RoutePaths.settingsPath);
    }
  }

  List<String> proRequirements = [
    "Business name",
    "Business address",
    "Business registration license",
  ];

  List<String> basicRequirements = [
    "Verify your BVN",
    "Name, Place and Date of Birth",
    "Gender, Address, and Phone number",
    "Upload media",
  ];

  String url(String level) =>
      "https://paymeblue.com/kyc/business/$level?token=${stateValues.accessToken}";

  goToBasicKycWeb(BuildContext context) async {
    var uri = Uri.parse(url("intermediate"));
    log(url("intermediate"));
    await launchUrl(
      uri,
      mode: LaunchMode.inAppWebView,
    ).whenComplete(() {
      context.go(RoutePaths.settingsPath);
    });
  }

  goToProKycWeb(BuildContext context) async {
    var uri = Uri.parse(url("pro"));
    await launchUrl(
      uri,
      mode: LaunchMode.inAppWebView,
    ).whenComplete(() {
      context.go(RoutePaths.settingsPath);
    });
  }
}
