import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class SignupShellView extends StatefulWidget {
  final Widget child;
  const SignupShellView({super.key, required this.child});

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
          body: Container(
            height: model.size.height,
            width: model.size.width,
            color: AppColors.white,
            padding: const EdgeInsets.only(bottom: 35),
            child: widget.child,
          ),
        );
      },
    );
  }
}
