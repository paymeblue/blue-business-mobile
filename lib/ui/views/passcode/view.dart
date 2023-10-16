import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/ui/widgets/num_pad.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:provider/provider.dart';
import 'view_model.dart';
import 'package:flutter/material.dart';

class PasscodeView extends StatefulWidget {
  const PasscodeView({super.key});

  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.passcodePath,
        key: ValueKey(AppPages.passcodePath),
        child: const PasscodeView());
  }

  @override
  State<PasscodeView> createState() => _PasscodeViewState();
}

class _PasscodeViewState extends State<PasscodeView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseView<PasscodeViewModel>(
        model: PasscodeViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, _) {
          return Scaffold(
            appBar: BlueAppBar.show(
              leadingIcon: Icons.arrow_back_ios_new,
              onBackTap: () {
                model.appStateManager.passcode = false;
              },
            ),
            body: Consumer<AuthStateManager>(builder: (context, auth, _) {
              return Container(
                  padding: const EdgeInsets.only(
                      top: 25, bottom: 52, left: 16, right: 16),
                  child: Column(children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Create your transaction PIN",
                        style: AppTextStyles.header,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Create a PIN to authorise transactions. Please do not  share this PIN with anyone.",
                        style: AppTextStyles.subHeader,
                      ),
                    ),
                    const SizedBox(height: 50),
                    if (auth.isRegistration)
                      Text(
                        "Confirm PIN",
                        style: AppTextStyles.subHeader,
                      ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(4, (index) {
                        bool isSet = false;
                        if (auth.passcode.length > index) {
                          isSet = true;
                        }
                        return Row(
                          children: [
                            Container(
                              height: 22,
                              width: 22,
                              decoration: BoxDecoration(
                                  color: AppColors.grey,
                                  shape: BoxShape.circle),
                              child: Container(
                                height: 20,
                                width: 20,
                                margin: const EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                    color: isSet
                                        ? AppColors.primaryColor
                                        : Colors.transparent,
                                    shape: BoxShape.circle),
                              ),
                            ),
                            SizedBox(width: index == 3 ? 0 : 13.5)
                          ],
                        );
                      }),
                    ),
                    const Spacer(),
                    Container(
                        height: size.height / 2.3,
                        width: size.width / 1.25,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 8),
                        child: NumPad(
                          pin: auth.passcode,
                          onUsebiometrics: () {},
                          onChanged: (val) {
                            auth.passcode = val;
                          },
                        )),
                    const Spacer(flex: 2),
                    AppButton(
                      onTap: model.goBack,
                      buttonText: "Create PIN",
                      isActive: auth.passcode.length == 4,
                    ),
                  ]));
            }),
          );
        });
  }
}
