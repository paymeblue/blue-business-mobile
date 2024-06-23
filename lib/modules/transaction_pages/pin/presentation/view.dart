import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/storage/keys.dart';
import 'package:blue_business/core/models/transaction/verify/receiver/verified_receiver.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/textfield/num_pad.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class ConfirmTransactionPinView extends StatefulWidget {
  final String? id;
  final int? amount;
  final String mode;
  final String? transactionId;
  final VerifiedReceiver? data;
  const ConfirmTransactionPinView({
    super.key,
    this.id,
    this.amount,
    this.data,
    this.transactionId,
    required this.mode,
  }) : assert((mode == "withdraw" && amount != null) ||
            (data != null && transactionId != null));

  @override
  State<ConfirmTransactionPinView> createState() =>
      _ConfirmTransactionPinViewState();
}

class _ConfirmTransactionPinViewState extends State<ConfirmTransactionPinView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ConfirmTransactionPinViewModel>(
      model: ConfirmTransactionPinViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...regidterTitleAndSubtitle(),
            const Spacer(),
            pinFields(model),
            const Spacer(),
            numberPad(model),
            55.verticalGap,
            forgotPinButton(onTap: () {
              model.getSecurityQuestion(context);
            }),
            62.verticalGap,
            confirmButton(
              onTap: () {
                model.onButtonTap(context, widget.mode, widget.amount,
                    widget.transactionId, widget.data);
              },
              isActive: model.pin.length >= 4,
            ),
          ],
        );
      },
    );
  }

  Padding numberPad(ConfirmTransactionPinViewModel model) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: NumPad(
        pin: model.pin,
        onChanged: (v) {
          model.pin = v;
        },
        onUsebiometrics: StorageValues.pin.isNotEmpty
            ? () {
                model.completeWithBiometrics(context, widget.mode,
                    widget.amount, widget.transactionId, widget.data);
              }
            : null,
      ),
    );
  }

  Row pinFields(ConfirmTransactionPinViewModel model) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
        bool isSet = false;
        if (model.pin.length > index) {
          isSet = true;
        }
        return Row(
          children: [
            Container(
              height: 22,
              width: 22,
              decoration: const BoxDecoration(
                  color: AppColors.grey, shape: BoxShape.circle),
              child: Container(
                height: 20,
                width: 20,
                margin: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                    color: isSet ? AppColors.primary : Colors.transparent,
                    shape: BoxShape.circle),
              ),
            ),
            SizedBox(width: index == 3 ? 0 : 13.5)
          ],
        );
      }),
    );
  }

  Widget forgotPinButton({required VoidCallback onTap}) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          "Forgot PIN?",
          style: AppTextStyles.subText,
        ),
      ),
    );
  }

  List<Widget> regidterTitleAndSubtitle() {
    return [
      Text(
        "Enter your PIN",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      subtitle(
        "Please enter your PIN to confirm transaction. Never share your PIN to anyone.",
      ),
    ];
  }

  AppButton confirmButton(
      {required VoidCallback onTap, bool isActive = false}) {
    return AppButton.primary(
      title: "Create PIN",
      isEnabled: isActive,
      onTap: onTap,
    );
  }

  Widget subtitle(String text) {
    return SizedBox(
      width: 350,
      child: Text(
        text,
        style: AppTextStyles.subHeader,
        textAlign: TextAlign.start,
      ),
    );
  }
}
