import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/gen/fonts.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/modules/splash/presentation/view_model.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<SplashViewModel>(
        model: SplashViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, _) {
          return Scaffold(
            body: Container(
              height: MediaQuery.sizeOf(context).height,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.primary,
              ),
              child: Column(
                children: [
                  Spacer(
                    flex: model.containerHeight == 0 ? 1 : 4,
                  ),
                  splashLogo(),
                  Spacer(
                    flex: model.containerHeight == 0 ? 1 : 3,
                  ),
                  onboardingContainer(model)
                ],
              ),
            ),
          );
        });
  }

  AnimatedContainer onboardingContainer(SplashViewModel model) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      height: model.containerHeight,
      padding: const EdgeInsets.symmetric(vertical: 35),
      width: model.size.width,
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            onboardingSlider(model),
            28.verticalGap,
            onboardingText(model),
            15.verticalGap,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: AppButton.primary(
                title: "Create an account",
                onTap: () {
                  model.goToSignup(context);
                },
              ),
            ),
            6.verticalGap,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: AppButton.ghostPrimary(
                  title: "Login",
                  onTap: () {
                    model.goToLogin(context);
                  }),
            ),
            35.verticalGap,
            onboardingLegalText(model)
          ],
        ),
      ),
    );
  }

  SizedBox onboardingLegalText(SplashViewModel model) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * .8,
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
              text:
                  "By tapping Create an account and using blue, you agree to our ",
              style:
                  AppTextStyles.smallText.copyWith(color: AppColors.textColor),
            ),
            TextSpan(
              text: "Terms ",
              recognizer: TapGestureRecognizer()..onTap = model.launchTerms,
              style: AppTextStyles.smallText.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColors.primary,
              ),
            ),
            TextSpan(
              text: "and ",
              style:
                  AppTextStyles.smallText.copyWith(color: AppColors.textColor),
            ),
            TextSpan(
              text: "Privacy policy",
              recognizer: TapGestureRecognizer()..onTap = model.launchPrivacy,
              style: AppTextStyles.smallText.copyWith(
                  fontWeight: FontWeight.w500, color: AppColors.primary),
            )
          ]),
          textAlign: TextAlign.center,
        ));
  }

  Container onboardingText(SplashViewModel model) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: model.size.width / 8),
      child: Text(
        model.onboardingText[model.index],
        style: const TextStyle(
            fontFamily: AppFonts.satoshi,
            color: AppColors.textColor,
            fontSize: 24.5,
            fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget onboardingSlider(SplashViewModel model) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(model.onboardingText.length, (index) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 350),
            height: 7,
            width: (MediaQuery.of(context).size.width * .8) / 3,
            decoration: containerDecoration(index, model),
          );
        }),
      ),
    );
  }

  BoxDecoration containerDecoration(int index, SplashViewModel model) {
    return BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft:
            index > 0 ? const Radius.circular(0) : const Radius.circular(3),
        bottomLeft:
            index > 0 ? const Radius.circular(0) : const Radius.circular(3),
        topRight: index < model.index
            ? const Radius.circular(0)
            : const Radius.circular(3),
        bottomRight: index < model.index
            ? const Radius.circular(0)
            : const Radius.circular(3),
      ),
      color: model.index >= index ? AppColors.primary : AppColors.grey,
    );
  }

  Widget splashLogo() {
    return SizedBox(
      height: 70,
      child: Image.asset(
        AppAssets.images.logos.splashLogo.path,
        fit: BoxFit.contain,
      ),
    );
  }
}
