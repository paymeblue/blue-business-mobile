import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

@RoutePage()
class InitiatePhoneResetView extends StatelessWidget {
  const InitiatePhoneResetView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<InitiatePhoneResetViewModel>(
      model: InitiatePhoneResetViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(onBackTap: () {
            model.goBack(context);
          }),
          body: Container(
            height: model.size.height,
            width: model.size.width,
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 35, top: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      ...titleAndSubtitle(),
                      50.verticalGap,
                      BlueTextField.plaintext(
                        hint: "3482JTYW239QWSA",
                        title: "Recovery Code",
                        controller: model.recoveryCodeController,
                        onChanged: model.onChanged,
                      ),
                    ],
                  ),
                ),
                AppButton.primary(
                    title: "Continue",
                    isEnabled: model.recoveryCodeController.text.isNotEmpty,
                    onTap: () {
                      model.sendRecoveryCode(context);
                    })
              ],
            ),
          ),
        );
      },
    );
  }

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        "Enter your recovery code",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      subtitle(
        "To change your phone number, please enter your unique recovery code.",
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
