import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/models/transaction/verify/receiver/verified_receiver.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/ui/features/pay/pages/confirm_payment/presentation/view_model.dart';
import 'package:flutter/material.dart';

class ConfirmTransactionViewArgs {
  final PaymentMode mode;
  final int? amount;
  final VerifiedReceiver? receiver;
  final String? transactionId;

  ConfirmTransactionViewArgs({
    required this.mode,
    this.amount,
    this.receiver,
    this.transactionId,
  }) : assert((mode.key == "withdraw" && amount != null) ||
            (receiver != null && transactionId != null));
}

class ConfirmTransactionView extends StatelessWidget {
  const ConfirmTransactionView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<ConfirmTransactionViewModel>(
        model: ConfirmTransactionViewModel(),
        onModelReady: (model) => model.init(context),
        builder: (context, model, _) {
          return const Placeholder();
        });
  }
}
