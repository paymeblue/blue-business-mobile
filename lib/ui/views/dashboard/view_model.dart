import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/ui/views/bills/view.dart';
import 'package:blue_business/ui/views/home/view.dart';
import 'package:blue_business/ui/views/message/view.dart';
import 'package:blue_business/ui/views/settings/view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late Size size;
  PageController pageController = PageController();

  init() {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    size = MediaQuery.sizeOf(appContext!);
  }

  List<Widget> pages() {
    return [
      const HomeView(),
      Container(),
      MessageHomeView(onBackTap: () {
        onPageChanged(0);
        pageController.jumpToPage(appStateManager.dashIndex);
      }),
      BillsHomeView(onBackTap: () {
        onPageChanged(0);
        pageController.jumpToPage(appStateManager.dashIndex);
      }),
      // Container(),
      // BillsHomeView(onBackTap: () {
      //   onPageChanged(0);
      //   pageController.jumpToPage(appStateManager.homeIndex);
      // }),
      const SettingsView()
    ];
  }

  List<String> pagesNames = [
    "Home",
    "Insights",
    "Message",
    "Bills",
    "Settings"
  ];

  onPageChanged(int index) {
    appStateManager.dashIndex = index;
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
