import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class UpdateKycView extends StatefulWidget {
  const UpdateKycView({super.key});

  @override
  State<UpdateKycView> createState() => _UpdateKycViewState();
}

class _UpdateKycViewState extends State<UpdateKycView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<UpdateKycViewModel>(
      model: UpdateKycViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context);
            },
          ),
          body: Container(
            height: model.size.height,
            width: model.size.width,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 35),
            child: Column(
              children: [],
            ),
          ),
        );
      },
    );
  }
}
