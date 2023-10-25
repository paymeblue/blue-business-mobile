import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/utils/confirm_back_tap.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view_model.dart';
import 'widgets/navbar_item.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();

  static MaterialPage page() {
    return MaterialPage(
      name: AppPages.dashPath,
      key: ValueKey(AppPages.dashPath),
      child: const DashboardView(),
    );
  }
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<DashboardViewModel>(
        model: DashboardViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, _) {
          return Scaffold(
            body: ConfirmBackTap(
                child: PageView(
              controller: model.pageController,
              onPageChanged: model.onPageChanged,
              children: model.pages(),
            )),
            bottomNavigationBar:
                Consumer<AppStateManager>(builder: (context, stateManager, _) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                      model.pagesNames.length,
                      (index) => NavBarItem(
                          name: model.pagesNames[index],
                          onTap: () {
                            stateManager.dashIndex = index;
                            model.pageController.jumpToPage(index);
                          },
                          isActive: index == stateManager.dashIndex)),
                ),
              );
            }),
          );
        });
  }
}
