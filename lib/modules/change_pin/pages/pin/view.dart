import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/textfield/num_pad.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class ChangePinContent extends StatefulWidget {
  final ValueChanged<String> onNewPinSet;
  final int index;
  const ChangePinContent({
    super.key,
    required this.onNewPinSet,
    this.index = 0,
  });

  @override
  State<ChangePinContent> createState() => _ChangePinContentState();
}

class _ChangePinContentState extends State<ChangePinContent> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ChangePinContentViewModel>(
      model: ChangePinContentViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          body: Column(
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
                  widget.onNewPinSet(model.pin);
                },
              )
            ],
          ),
        );
      },
    );
  }

  Widget numberPad(ChangePinContentViewModel model) {
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

  Widget pinFields(ChangePinContentViewModel model) {
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
        titleString(),
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      subtitle(
        subtitleString(),
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

  String titleString() {
    switch (widget.index) {
      case 0:
        return "Change PIN";
      case 1:
        return "Enter a new PIN";
      default:
        return "Confirm new PIN";
    }
  }

  String subtitleString() {
    switch (widget.index) {
      case 0:
        return "Enter your current PIN to set a new one. please do not share your pin to anyone.";
      case 1:
        return "EEnter a 4 - digit PIN you won’t forget. Do not share this PIN to anyone.";
      default:
        return "Re - enter your new 4 - digit PIN. Do not share this PIN to anyone";
    }
  }
}
