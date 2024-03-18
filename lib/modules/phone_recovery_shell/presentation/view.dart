import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class PhoneRecoveryShellView extends StatefulWidget {
  final Widget child;
  const PhoneRecoveryShellView({super.key, required this.child});

  @override
  State<PhoneRecoveryShellView> createState() => _PhoneRecoveryShellViewState();
}

class _PhoneRecoveryShellViewState extends State<PhoneRecoveryShellView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<PhoneRecoveryShellViewModel>(
      model: PhoneRecoveryShellViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return widget.child;
      },
    );
  }
}
