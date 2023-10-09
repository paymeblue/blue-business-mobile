import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:blue_business/utils/confirm_back_tap.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/views/splash/view_model.dart';
import 'package:url_launcher/url_launcher.dart';

class SplashView extends StatefulWidget {
  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.splashPath,
        key: ValueKey(AppPages.splashPath),
        child: const SplashView());
  }

  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseView<SplashViewModel>(
      model: SplashViewModel(),
      onModelReady: (model) async => await model.init(),
      onDispose: (model) => model.dispose(),
      builder: (context, model, _) {
        return Scaffold(
          body: ConfirmBackTap(
            child: Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(color: AppColors.primaryColor),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(flex: model.containerHeight == 0 ? 1 : 4),
                  SizedBox(
                      height: 70,
                      width: 1600,
                      child: Image.asset(
                        "assets/images/logos/splash logo.png",
                        fit: BoxFit.contain,
                      )),
                  Spacer(
                    flex: model.containerHeight == 0 ? 1 : 2,
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 350),
                    height: model.containerHeight,
                    padding: const EdgeInsets.only(top: 50),
                    width: size.width,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .8,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                  model.onboardingText.length, (index) {
                                return AnimatedContainer(
                                  duration: const Duration(milliseconds: 350),
                                  height: 7,
                                  width:
                                      (MediaQuery.of(context).size.width * .8) /
                                          model.onboardingSubText.length,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: index > 0
                                            ? const Radius.circular(0)
                                            : const Radius.circular(3),
                                        bottomLeft: index > 0
                                            ? const Radius.circular(0)
                                            : const Radius.circular(3),
                                        topRight: index < model.index
                                            ? const Radius.circular(0)
                                            : const Radius.circular(3),
                                        bottomRight: index < model.index
                                            ? const Radius.circular(0)
                                            : const Radius.circular(3),
                                      ),
                                      color: model.index >= index
                                          ? AppColors.primaryColor
                                          : AppColors.grey),
                                );
                              }),
                            ),
                          ),
                          const SizedBox(height: 28),
                          Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(
                                horizontal: model.index == 0
                                    ? size.width / 6
                                    : model.index == 3
                                        ? size.width / 4.5
                                        : size.width / 7),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  model.onboardingText[model.index],
                                  style: TextStyle(
                                      fontFamily: "Gilroy",
                                      color: AppColors.textcolor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  model.onboardingSubText[model.index],
                                  style: AppTextStyles.subText,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          AppButton(
                            onTap: () {},
                            buttonText: "Create an account",
                            width: 330,
                          ),
                          const SizedBox(height: 15),
                          AppButton(
                            onTap: () {
                              model.appStateManager.goToLogin();
                            },
                            buttonText: "Login",
                            isPrimary: false,
                            width: 330,
                          ),
                          const SizedBox(height: 28),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text:
                                          "By tapping Create an account and using blue, you agree to our ",
                                      style: AppTextStyles.smallText.copyWith(
                                          color: AppColors.textcolor)),
                                  TextSpan(
                                      text: "Terms ",
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          launchUrl(Uri.parse(
                                              "https://paymeblue.com/terms-and-conditions"));
                                        },
                                      style: AppTextStyles.smallText.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.primaryColor)),
                                  TextSpan(
                                      text: "and ",
                                      style: AppTextStyles.smallText.copyWith(
                                          color: AppColors.textcolor)),
                                  TextSpan(
                                      text: "Privacy policy",
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          launchUrl(Uri.parse(
                                              "https://paymeblue.com/privacy"));
                                        },
                                      style: AppTextStyles.smallText.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.primaryColor))
                                ]),
                                textAlign: TextAlign.center,
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
