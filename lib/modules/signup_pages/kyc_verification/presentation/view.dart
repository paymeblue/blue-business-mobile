import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class SignupKycView extends StatefulWidget {
  const SignupKycView({super.key});

  @override
  State<SignupKycView> createState() => _SignupKycViewState();
}

class _SignupKycViewState extends State<SignupKycView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<SignupKycViewModel>(
        model: SignupKycViewModel(),
        onModelReady: (model) => model.init(context),
        builder: (context, model, _) {
          return const Placeholder();
        });
  }
}
