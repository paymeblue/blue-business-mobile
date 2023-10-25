import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/views/login/view.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/ui/widgets/custom_textfield.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class RecoveryCodeView extends StatefulWidget {
  const RecoveryCodeView({super.key});

  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.recoveryCodePath,
        key: ValueKey(AppPages.recoveryCodePath),
        child: const RecoveryCodeView());
  }

  @override
  State<RecoveryCodeView> createState() => _RecoveryCodeViewState();
}

class _RecoveryCodeViewState extends State<RecoveryCodeView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ResetPhoneViewModel>(
        model: ResetPhoneViewModel(),
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
                onBackTap: () {
                  model.appStateManager.recoveryCode = false;
                },
              ),
              body: Container(
                  padding: const EdgeInsets.only(
                      top: 25, bottom: 52, left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enter your recovery code",
                        style: AppTextStyles.header,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "To change your phone number, please enter your unique recovery code.",
                        style: AppTextStyles.subHeader,
                      ),
                      const SizedBox(height: 50),
                      const TextFieldHeader(title: "Recovery Code"),
                      CustomTextField(
                        hintText: "Recovery Code",
                        onChanged: model.onCodeChanged,
                        onSaved: model.onCodeSaved,
                      ),
                      const Spacer(),
                      Center(
                        child: AppButton(
                          onTap: () {
                            model.sendRecoveryCode(context);
                          },
                          buttonText: "Continue",
                          isActive: model.recoveryCode.isNotEmpty,
                        ),
                      ),
                    ],
                  )),
            ),
          );
        });
  }
}
