import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

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
          body: Container(),
        );
      },
    );
  }
}
