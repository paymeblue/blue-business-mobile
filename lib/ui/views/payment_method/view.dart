import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/managers/payment_state_manager.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'view_model.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PaymentMethodView extends StatefulWidget {
  const PaymentMethodView({super.key});

  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.paymentMethodPath,
        key: ValueKey(AppPages.paymentMethodPath),
        child: const PaymentMethodView());
  }

  @override
  State<PaymentMethodView> createState() => _PaymentMethodViewState();
}

class _PaymentMethodViewState extends State<PaymentMethodView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseView<PaymentMethodViewModel>(
      model: PaymentMethodViewModel(),
      onModelReady: (model) => model.init(),
      onDispose: (p0) {
        Timeout.dispose();
      },
      builder: (context, model, _) {
        return GestureDetector(
          onTap: () {
            Timeout.resetTimer();
          },
          onPanDown: (details) {
            Timeout.resetTimer();
          },
          child: Scaffold(
            appBar: BlueAppBar.show(
              leadingIcon: Icons.arrow_back_ios_new,
              onBackTap: () {
                model.appStateManager.paymentMethod = false;
                model.paymentStateManager.resetPayViaPhone();
                model.paymentStateManager.recipient = null;
                if (model.appStateManager.quickPay) {
                  model.paymentStateManager.method = null;
                }
                if (model.paymentStateManager.method == PaymentMethod.offline) {
                  model.appStateManager.quickPay = false;
                }
                model.paymentStateManager.recipientName = "";
                model.paymentStateManager.phone = "";
                model.paymentStateManager.walletId = "";
              },
            ),
            body: SingleChildScrollView(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 1500),
                padding: const EdgeInsets.only(bottom: 52),
                height: size.height - 80,
                child: Column(
                  children: [
                    Expanded(child: model.child()),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
