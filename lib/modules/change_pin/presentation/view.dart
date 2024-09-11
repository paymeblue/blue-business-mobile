import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/modules/change_pin/pages/pin/view.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class ChangePinView extends StatefulWidget {
  const ChangePinView({super.key});

  @override
  State<ChangePinView> createState() => _ChangePinViewState();
}

class _ChangePinViewState extends State<ChangePinView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ChangePinViewModel>(
      model: ChangePinViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.onBackTap(context);
            },
            icon: model.pageIndex == 0
                ? Icons.close
                : Icons.arrow_back_ios_new_rounded,
          ),
          body: Container(
            height: model.size.height,
            width: model.size.height,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 35),
            child: PageView.builder(
              controller: model.pageController,
              onPageChanged: model.onPageChanged,
              itemBuilder: (context, index) {
                return ChangePinContent(
                  onNewPinSet: (v) {
                    model.onNewPinSet(v, index, context);
                  },
                  index: index,
                );
              },
            ),
          ),
        );
      },
    );
  }
}
