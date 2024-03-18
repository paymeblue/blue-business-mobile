import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class PasswordRecoveryShellView extends StatefulWidget {
  final Widget child;
  const PasswordRecoveryShellView({super.key, required this.child});

  @override
  State<PasswordRecoveryShellView> createState() =>
      _PasswordRecoveryShellViewState();
}

class _PasswordRecoveryShellViewState extends State<PasswordRecoveryShellView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<PasswordRecoveryShellViewModel>(
      model: PasswordRecoveryShellViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return widget.child;
      },
    );
  }
}
