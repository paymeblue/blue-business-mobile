import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/steppers/horizontal_step_indicator.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class SetupBusinessShellView extends StatefulWidget {
  final Widget child;
  final int currentIndex;
  const SetupBusinessShellView(
      {super.key, required this.child, this.currentIndex = 0});

  @override
  State<SetupBusinessShellView> createState() => _SetupBusinessShellViewState();
}

class _SetupBusinessShellViewState extends State<SetupBusinessShellView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<SetupBusinessShellViewModel>(
      onModelReady: (model) => model.init(),
      model: SetupBusinessShellViewModel(),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context, widget.currentIndex);
            },
            icon: widget.currentIndex == 0
                ? Icons.close
                : Icons.arrow_back_ios_new,
          ),
          body: Container(
            height: model.size.height,
            width: model.size.width,
            color: AppColors.white,
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 35),
            child: Column(
              children: [
                StepIndicator(
                  index: widget.currentIndex,
                  indicatorCount: 3,
                ),
                35.verticalGap,
                Expanded(
                  child: widget.child,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
