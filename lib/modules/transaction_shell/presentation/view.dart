import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class TransactionShellView extends StatefulWidget {
  final Widget child;
  final int currentIndex;
  const TransactionShellView({
    super.key,
    required this.child,
    this.currentIndex = 0,
  });

  @override
  State<TransactionShellView> createState() => _TransactionShellViewState();
}

class _TransactionShellViewState extends State<TransactionShellView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<TransactionShellViewModel>(
      model: TransactionShellViewModel(),
      onModelReady: (model) => model.init(context),
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
          body: SingleChildScrollView(
            child: Container(
              height: model.size.height - (model.size.height >= 900 ? 115 : 80),
              width: model.size.width,
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 35, top: 20),
              child: widget.child,
            ),
          ),
        );
      },
    );
  }
}
