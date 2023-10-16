import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class RegisterMethodView extends StatefulWidget {
  const RegisterMethodView({super.key});

  @override
  State<RegisterMethodView> createState() => _RegisterMethodViewState();

  static MaterialPage page() {
    return MaterialPage(
      name: AppPages.registerMethodPath,
      key: ValueKey(AppPages.registerMethodPath),
      child: const RegisterMethodView(),
    );
  }
}

class _RegisterMethodViewState extends State<RegisterMethodView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<RegisterMethodViewModel>(
      model: RegisterMethodViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.show(
            onBackTap: model.goBack,
            leadingIcon: Icons.arrow_back_ios_new,
          ),
          body: SingleChildScrollView(
            child: Container(
              height: model.size.height - 80,
              padding: const EdgeInsets.only(
                  top: 25, bottom: 52, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create an account",
                    style: AppTextStyles.header,
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(right: 70),
                    child: Text(
                      "Please select the option in which you want to signup with Blue Business.",
                      style: AppTextStyles.subHeader,
                    ),
                  ),
                  const SizedBox(height: 20),
                  RegisterMethodContainer(
                    title: "Sign up with Blue Personal",
                    subtitle:
                        "Use your existing Blue personal account to create a Blue Business account",
                    image: AppAssets.blueRegisterIcon,
                    size: model.size,
                    onTap: () {
                      model.selectedMethod = RegisterMethod.blue;
                      model.authStateManager.setIsRegistration(true);
                      model.appStateManager.login = true;
                    },
                    isSelected: model.selectedMethod == RegisterMethod.blue,
                  ),
                  const SizedBox(height: 20),
                  RegisterMethodContainer(
                    title: "Sign up with your phone number",
                    subtitle:
                        "Create an account on Blue Business with your phone number.",
                    image: AppAssets.phoneRegisterIcon,
                    size: model.size,
                    onTap: () {
                      model.selectedMethod = RegisterMethod.phone;
                      model.goToRegisterSelf();
                    },
                    isSelected: model.selectedMethod == RegisterMethod.phone,
                  ),
                  const SizedBox(height: 35),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Already have an account? ",
                          style: AppTextStyles.subText),
                      TextSpan(
                          text: "Login",
                          recognizer: TapGestureRecognizer()
                            ..onTap = model.appStateManager.goToLogin,
                          style: AppTextStyles.subText
                              .copyWith(color: AppColors.bodyTextcolor)),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class RegisterMethodContainer extends StatelessWidget {
  const RegisterMethodContainer({
    super.key,
    required this.size,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.onTap,
    this.isSelected = false,
  });

  final Size size;
  final String title;
  final String subtitle;
  final String image;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width,
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: AppColors.grey,
          border: isSelected ? Border.all(color: AppColors.primaryColor) : null,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.header.copyWith(
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      subtitle,
                      style: AppTextStyles.subHeader.copyWith(
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
