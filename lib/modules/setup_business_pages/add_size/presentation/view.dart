import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class AddSizeView extends StatefulWidget {
  final int id;
  const AddSizeView({super.key, required this.id});

  @override
  State<AddSizeView> createState() => _AddSizeViewState();
}

class _AddSizeViewState extends State<AddSizeView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<AddBusinessSizeViewModel>(
        model: AddBusinessSizeViewModel(),
        onModelReady: (model) => model.init(context),
        builder: (context, model, _) {
          return Column(
            children: [
              AppButton.primary(
                title: "Continue",
                onTap: () {},
              )
            ],
          );
        });
  }
}
