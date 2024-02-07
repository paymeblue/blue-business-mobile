import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class PinRecoveryShellView extends StatefulWidget {
  final Widget child;
  const PinRecoveryShellView({super.key, required this.child});

  @override
  State<PinRecoveryShellView> createState() => _PinRecoveryShellViewState();
}

class _PinRecoveryShellViewState extends State<PinRecoveryShellView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<PinRecoveryShellViewModel>(
      model: PinRecoveryShellViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return widget.child;
      },
    );
  }
}
