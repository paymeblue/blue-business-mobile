import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/storage/keys.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/textfield/num_pad.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'view_model.dart';

class PushPaymentPinView extends StatefulWidget {
  final String transactionId;
  const PushPaymentPinView({
    super.key,
    required this.transactionId,
  });

  @override
  State<PushPaymentPinView> createState() => _PushPaymentPinViewState();
}

class _PushPaymentPinViewState extends State<PushPaymentPinView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<PushPaymentPinViewModel>(
      model: PushPaymentPinViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              context.go(RoutePaths.homePath);
            },
          ),
          body: Container(
            height: model.size.height,
            width: model.size.width,
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...regidterTitleAndSubtitle(),
                const Spacer(),
                pinFields(model),
                const Spacer(),
                numberPad(model),
                55.verticalGap,
                forgotPinButton(onTap: () {}),
                62.verticalGap,
                confirmButton(
                  onTap: () {
                    model.onButtonTap(context, widget.transactionId);
                  },
                  isActive: model.pin.length >= 4,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Padding numberPad(PushPaymentPinViewModel model) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: NumPad(
        pin: model.pin,
        onChanged: (v) {
          model.pin = v;
        },
        onUsebiometrics: StorageValues.pin.isNotEmpty
            ? () {
                model.completeWithBiometrics(context, widget.transactionId);
              }
            : null,
      ),
    );
  }

  Row pinFields(PushPaymentPinViewModel model) {
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
      title: "Enter PIN",
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
