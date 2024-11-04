import 'dart:developer';

import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/models/settings_option/section_option.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BillsViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    context.pop();
  }

  List<SectionOption> billOptions(BuildContext context) {
    return [
      SectionOption(
        icon: AppAssets.images.icons.airtime.svg(),
        title: "Purchase Airtime",
        subtitle: "Top-up your mobile airtime.",
        onTap: () {
          log("COME ONNNNNN");
          context.push(RoutePaths.initiateAirtime);
        },
      ),
      SectionOption(
        icon: AppAssets.images.icons.data.svg(),
        title: "Purchase Data",
        subtitle: "Renew your data subscription.",
        onTap: () {
          context.push(RoutePaths.initiateData);
        },
      ),
      SectionOption(
        icon: AppAssets.images.icons.electricity.svg(),
        title: "Pay Electricity Bill",
        subtitle: "Purchase electricity units for your meter.",
        onTap: () {
          context.push(RoutePaths.initiatePower);
        },
      ),
      SectionOption(
        icon: AppAssets.images.icons.tv.svg(),
        title: "Pay Cable TV",
        subtitle: "Renew your cable tv subscription.",
        onTap: () {
          context.push(RoutePaths.initiateTv);
        },
      ),
    ];
  }
}
