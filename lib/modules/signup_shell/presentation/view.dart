import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class SignupShellView extends StatefulWidget {
  final Widget child;
  final int currentIndex;
  const SignupShellView(
      {super.key, required this.child, this.currentIndex = 0});

  @override
  State<SignupShellView> createState() => _SignupShellViewState();
}

class _SignupShellViewState extends State<SignupShellView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<SignupShellViewModel>(
      onModelReady: (model) => model.init(),
      model: SignupShellViewModel(),
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
            child: widget.child,
          ),
        );
      },
    );
  }
}
