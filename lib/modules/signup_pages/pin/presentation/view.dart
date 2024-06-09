import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/textfield/num_pad.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class PinView extends StatefulWidget {
  const PinView({super.key});

  @override
  State<PinView> createState() => _PinViewState();
}

class _PinViewState extends State<PinView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<PinViewModel>(
      model: PinViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...regidterTitleAndSubtitle(),
              const Spacer(),
              pinFields(model),
              const Spacer(),
              numberPad(model),
              120.verticalGap,
              registerButton(
                  onTap: () {
                    model.checkBiometric(context);
                  },
                  isActive: model.pin.length >= 4),
            ],
          ),
        );
      },
    );
  }

  Padding numberPad(PinViewModel model) {
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

  Row pinFields(PinViewModel model) {
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

  List<Widget> regidterTitleAndSubtitle() {
    return [
      Text(
        "Create your PIN",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      subtitle(
        "Enter a 4 - digit PIN you won’t forget. Do not share this PIN to anyone.",
      ),
    ];
  }

  AppButton registerButton(
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
