import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/views/login/view.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/ui/widgets/dial_code_text_field.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view_model.dart';

class ResetPhoneView extends StatefulWidget {
  const ResetPhoneView({super.key});

  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.resetPhonePath,
        key: ValueKey(AppPages.resetPhonePath),
        child: const ResetPhoneView());
  }

  @override
  State<ResetPhoneView> createState() => _ResetPhoneViewState();
}

class _ResetPhoneViewState extends State<ResetPhoneView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ResetPhoneViewModel>(
        model: ResetPhoneViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, _) {
          return Scaffold(
              appBar: BlueAppBar.show(
                leadingIcon: Icons.close,
                onBackTap: () {
                  model.appStateManager.resetPhone = false;
                },
              ),
              body: Container(
                  padding: const EdgeInsets.only(
                      top: 25, bottom: 52, left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "What’s your new phone number?",
                        style: AppTextStyles.header,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Please enter your new phone number to login securely to your Blue account.",
                        style: AppTextStyles.subHeader,
                      ),
                      const SizedBox(height: 50),
                      const TextFieldHeader(title: "Phone number"),
                      PhoneNumberWithDialCodeTextField(
                        onChanged: (n) {
                          model.authStateManager.phone = n.number;
                        },
                        onSaved: (n) {
                          model.authStateManager.phone = n!.number;
                        },
                      ),
                      const Spacer(),
                      Consumer<AuthStateManager>(builder: (context, auth, _) {
                        return Center(
                          child: AppButton(
                            onTap: () {
                              model.sendPhone(context);
                            },
                            buttonText: "Continue",
                            isActive: auth.phone.isNotEmpty,
                          ),
                        );
                      }),
                    ],
                  )));
        });
  }
}
