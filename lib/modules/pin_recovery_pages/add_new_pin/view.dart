import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/textfield/num_pad.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class AddNewPinView extends StatefulWidget {
  final String phone;
  const AddNewPinView({
    super.key,
    required this.phone,
  });

  @override
  State<AddNewPinView> createState() => _AddNewPinViewState();
}

class _AddNewPinViewState extends State<AddNewPinView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<NewPinViewModel>(
      model: NewPinViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.getSecurityQuestion(context);
            },
            icon: Icons.arrow_back_ios_new,
          ),
          body: Container(
            height: model.size.height,
            width: model.size.width,
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 35, top: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...newPinTitleAndSubtitle(),
                const Spacer(),
                pinFields(model),
                const Spacer(),
                numberPad(model),
                120.verticalGap,
                AppButton.primary(
                  title: "Continue",
                  isEnabled: model.pin.length == 4,
                  onTap: () {
                    model.resetPin(context, widget.phone);
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget numberPad(NewPinViewModel model) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: NumPad(
        pin: model.pin,
        onChanged: (v) {
          model.pin = v;
        },
      ),
    );
  }

  Widget pinFields(NewPinViewModel model) {
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

  List<Widget> newPinTitleAndSubtitle() {
    return [
      Text(
        "Reset PIN",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      subtitle(
        "Enter a 4 - digit PIN you won’t forget. Do not share this PIN to anyone.",
      ),
    ];
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
