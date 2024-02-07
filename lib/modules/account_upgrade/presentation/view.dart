import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class UpdateKycView extends StatefulWidget {
  const UpdateKycView({super.key});

  @override
  State<UpdateKycView> createState() => _UpdateKycViewState();
}

class _UpdateKycViewState extends State<UpdateKycView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<UpdateKycViewModel>(
      model: UpdateKycViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context);
            },
          ),
          body: Container(
            height: model.size.height,
            width: model.size.width,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 35),
            child: Column(
              children: [
                const Spacer(flex: 3),
                AppAssets.images.icons.kyc.svg(
                  height: 80,
                  width: 80,
                ),
                12.verticalGap,
                Text(
                  model.stateValues.isKycComplete
                      ? "Identity Verified"
                      : "Identity Verification",
                  style: AppTextStyles.header,
                ),
                3.verticalGap,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    model.stateValues.isKycComplete
                        ? "Your identity has been verified and your transfer limit has been increased."
                        : "To increase your account limit you need to verify your identity. Please tap continue to proceed",
                    style: AppTextStyles.subHeader,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Spacer(flex: 4),
                AppButton.primary(
                  title: model.stateValues.isKycComplete ? "Close" : "Continue",
                  onTap: () {
                    if (model.stateValues.isKycComplete) {
                      model.goBack(context);
                    } else {
                      model.goToKycWeb(context);
                    }
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
