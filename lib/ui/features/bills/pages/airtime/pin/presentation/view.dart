import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/config/storage/keys.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/bills/airtime/review_data/review_airtime_data.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/textfield/num_pad.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'view_model.dart';

class ConfirmAirtimePinView extends StatelessWidget {
  final ReviewAirtimeData data;
  const ConfirmAirtimePinView({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return BaseView<ConfirmElectricityPinViewModel>(
      model: ConfirmElectricityPinViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              context.pop();
            },
            icon: Icons.arrow_back_ios_new,
          ),
          body: Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 35, left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...titleAndSubtitle(context),
                const Spacer(flex: 2),
                pinFields(model),
                const Spacer(flex: 2),
                numberPad(model, context),
                const Spacer(flex: 2),
                forgotPinButton(onTap: () {
                  model.getSecurityQuestion(context);
                }),
                const Spacer(flex: 3),
                AppButton.primary(
                  title: "Confirm",
                  isEnabled: model.pin.length == 4,
                  onTap: () {
                    model.onButtonTap(context, data);
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Padding numberPad(
      ConfirmElectricityPinViewModel model, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: NumPad(
        pin: model.pin,
        onChanged: (v) {
          model.pin = v;
        },
        onUsebiometrics: model.useBiometrics && StorageValues.pin.isNotEmpty
            ? () {
                model.completeWithBiometrics(context, data);
              }
            : null,
      ),
    );
  }

  Row pinFields(ConfirmElectricityPinViewModel model) {
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
              height: 22.h,
              width: 22.w,
              decoration: const BoxDecoration(
                  color: AppColors.grey, shape: BoxShape.circle),
              child: Container(
                height: 20.h,
                width: 20.w,
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

  List<Widget> titleAndSubtitle(BuildContext context) {
    return [
      Text(
        "Enter your PIN",
        style: AppTextStyles.header,
      ),
      (context.mediaQuery.size.height * .001).verticalGap,
      subtitle(
        "Please enter your PIN to confirm transaction. Never share your PIN to anyone.",
      ),
    ];
  }

  Widget subtitle(String text) {
    return SizedBox(
      width: 350.w,
      child: Text(
        text,
        style: AppTextStyles.subHeader,
        textAlign: TextAlign.start,
      ),
    );
  }
}
