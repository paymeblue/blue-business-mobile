import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/ui/features/pay/pages/initiate/presentation/view_model.dart';
import 'package:flutter/material.dart';

class InitiateTransactionView extends StatelessWidget {
  final PaymentMode? mode;
  const InitiateTransactionView({super.key, this.mode});

  @override
  Widget build(BuildContext context) {
    return BaseView<InitiateTransactionViewModel>(
      model: InitiateTransactionViewModel(),
      onModelReady: (model) => model.init(context, mode),
      builder: (context, model, _) {
        return const Placeholder();
      },
    );
  }
}
