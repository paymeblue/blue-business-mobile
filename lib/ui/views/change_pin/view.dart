import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import '../../widgets/num_pad.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class ChangePinView extends StatefulWidget {
  const ChangePinView({super.key});

  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.changePinPath,
        key: ValueKey(AppPages.changePinPath),
        child: const ChangePinView());
  }

  @override
  State<ChangePinView> createState() => _ChangePinViewState();
}

class _ChangePinViewState extends State<ChangePinView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseView<ChnagePinViewModel>(
        model: ChnagePinViewModel(),
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
                  leadingIcon: Icons.arrow_back_ios_new,
                  onBackTap: () {
                    model.appStateManager.changePin = false;
                    model.authStateManager.newPasscode = false;
                  },
                ),
                body: Container(
                    padding: const EdgeInsets.only(
                        top: 25, bottom: 52, left: 16, right: 16),
                    child: Column(children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          model.pin.isEmpty
                              ? "Change PIN"
                              : model.newPin.isEmpty
                                  ? "Enter a new PIN"
                                  : "Confirm new PIN",
                          style: AppTextStyles.header,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          model.pin.isEmpty
                              ? "Enter your current PIN to set a new one. please do not share your pin with anyone"
                              : model.newPin.isEmpty
                                  ? "Enter a 4 - digit PIN you won’t forget. Do not share this PIN with anyone"
                                  : "Re - enter your new 4 - digit PIN. Do not share this PIN to anyone",
                          style: AppTextStyles.subHeader,
                        ),
                      ),
                      const SizedBox(height: 50),
                      Text(
                        model.pin.isEmpty
                            ? "Current PIN"
                            : model.newPin.isEmpty
                                ? "New PIN"
                                : "Confirm PIN",
                        style: AppTextStyles.subHeader,
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(4, (index) {
                          bool isSet = false;
                          if (model.tempPin.length > index) {
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
                            pin: model.tempPin,
                            onChanged: (val) {
                              model.tempPin = val;
                              if (model.pin.isNotEmpty &&
                                  model.newPin.isNotEmpty) {
                                model.confPinValidator(val);
                              }
                            },
                          )),
                      if (model.showError)
                        Text(
                          "PINs do not match",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.error),
                        ),
                      const Spacer(flex: 2),
                      AppButton(
                        onTap: () {
                          model.handleOnTap(context);
                        },
                        buttonText:
                            model.pin.isNotEmpty && model.newPin.isNotEmpty
                                ? "Create new PIN"
                                : "Continue",
                        isActive: model.tempPin.length == 4 && !model.showError,
                      ),
                    ]))),
          );
        });
  }
}
