import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/textfield/num_pad.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_model.dart';

@RoutePage()
class ResetPinView extends StatelessWidget {
  final String phone;
  const ResetPinView({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return BaseView<ResetPinViewModel>(
      model: ResetPinViewModel(),
      onModelReady: (model) => model.init(context, phone),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              if (model.isConfirm) {
                model.tempPin = "";
                model.isConfirm = false;
              } else {
                locator<AppRouter>().maybePop();
              }
            },
          ),
          body: Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 35, left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...newPinTitleAndSubtitle(model),
                const Spacer(flex: 2),
                pinFields(model),
                const Spacer(flex: 2),
                numberPad(model),
                const Spacer(flex: 5),
                AppButton.primary(
                  title: model.isConfirm ? "Create PIN" : "Confirm",
                  isEnabled: model.tempPin.length == 4,
                  onTap: () {
                    model.setPinAndNext(context);
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget numberPad(ResetPinViewModel model) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: NumPad(
        pin: model.tempPin,
        onChanged: (v) {
          model.tempPin = v;
        },
      ),
    );
  }

  Widget pinFields(ResetPinViewModel model) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
        bool isSet = false;
        if (model.tempPin.length > index) {
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
            SizedBox(width: index == 3 ? 0 : 13.5.w)
          ],
        );
      }),
    );
  }

  List<Widget> newPinTitleAndSubtitle(ResetPinViewModel model) {
    return [
      Text(
        titleString(model),
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      subtitle(
        subtitleString(model),
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

  String titleString(ResetPinViewModel model) {
    if (model.isConfirm) {
      return "Confirm your PIN";
    } else {
      return "Create your PIN";
    }
  }

  String subtitleString(ResetPinViewModel model) {
    if (model.isConfirm) {
      return "Re - enter your new 4 - digit PIN. Do not share this PIN to anyone";
    } else {
      return "Enter a 4 - digit PIN you won’t forget. Do not share this PIN to anyone.";
    }
  }
}
