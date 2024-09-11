import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/modules/pin_recovery_pages/reset_pin/pages/pin/view.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class ResetPinView extends StatefulWidget {
  final String phone;
  const ResetPinView({
    super.key,
    required this.phone,
  });

  @override
  State<ResetPinView> createState() => _ResetPinViewState();
}

class _ResetPinViewState extends State<ResetPinView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ResetPinViewModel>(
      model: ResetPinViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context);
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
                return ResetPinContent(
                  onNewPinSet: (v) {
                    model.onNewPinSet(v, index, context, widget.phone);
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
