import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/models/settings_option/section_option.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BillsViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    context.go(RoutePaths.walletPath);
  }

  List<SectionOption> billOptions(BuildContext context) {
    return [
      SectionOption(
        icon: AppAssets.images.icons.airtime.svg(),
        title: "Purchase Airtime",
        subtitle: "Top-up your mobile airtime.",
        onTap: () {
          // context.push(RoutePaths.initiateAirtimePath);
        },
      ),
      SectionOption(
        icon: AppAssets.images.icons.data.svg(),
        title: "Purchase Data",
        subtitle: "Renew your data subscription.",
        onTap: () {
          // context.push(RoutePaths.initiateDataPath);
        },
      ),
      SectionOption(
        icon: AppAssets.images.icons.electricity.svg(),
        title: "Pay Electricity Bill",
        subtitle: "Purchase electricity units for your meter.",
        onTap: () {
          // context.push(RoutePaths.initiateElectricityPath);
        },
      ),
      SectionOption(
        icon: AppAssets.images.icons.tv.svg(),
        title: "Pay Cable TV",
        subtitle: "Renew your cable tv subscription.",
        onTap: () {
          // context.push(RoutePaths.initiateCablePath);
        },
      ),
    ];
  }
}
