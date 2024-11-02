import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/ui/features/bottom_navigation/widgets/navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'view_model.dart';

class DashboardShellView extends StatefulWidget {
  final StatefulNavigationShell child;
  const DashboardShellView({super.key, required this.child});

  @override
  State<DashboardShellView> createState() => _DashboardShellViewState();
}

class _DashboardShellViewState extends State<DashboardShellView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<DashboardShellViewModel>(
      onModelReady: (model) => model.init(context, widget.child),
      model: DashboardShellViewModel(),
      builder: (context, model, _) {
        return Scaffold(
          body: SizedBox(
            height: model.size.height,
            width: model.size.width,
            child: widget.child,
          ),
          bottomNavigationBar: bottomNavContainer(model, context),
        );
      },
    );
  }

  Container bottomNavContainer(
      DashboardShellViewModel model, BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 28, top: 10),
      height: 90,
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[3],
        color: AppColors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            widget.child.route.branches.length,
            (index) => NavBarItem(
                  onTap: () {
                    model.goToPage(context, index);
                  },
                  index: index,
                  currentIncex: model.currentIndex,
                )),
      ),
    );
  }
}
