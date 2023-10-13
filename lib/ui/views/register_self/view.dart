import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/ui/widgets/step_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view_model.dart';

class RegisterSelfView extends StatefulWidget {
  const RegisterSelfView({super.key});

  @override
  State<RegisterSelfView> createState() => _RegisterSelfViewState();

  static MaterialPage page() {
    return MaterialPage(
      name: AppPages.registerSelfPath,
      key: ValueKey(AppPages.registerSelfPath),
      child: const RegisterSelfView(),
    );
  }
}

class _RegisterSelfViewState extends State<RegisterSelfView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<RegisterSelfViewModel>(
        model: RegisterSelfViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, _) {
          return Consumer<AuthStateManager>(builder: (context, auth, _) {
            return Scaffold(
              appBar: BlueAppBar.show(
                onBackTap: model.handleBackTap,
                leadingIcon: auth.signupIndex == 0
                    ? Icons.close
                    : Icons.arrow_back_ios_new,
              ),
              body: Container(
                padding: const EdgeInsets.only(
                    top: 25, bottom: 52, left: 16, right: 16),
                child: Column(
                  children: [
                    StepIndicator(
                      index: auth.signupIndex,
                      isActive: model.isActive,
                      indicatorCount: model.pages.length,
                    ),
                    const SizedBox(height: 34),
                    Expanded(
                        child: AnimatedContainer(
                      duration: const Duration(milliseconds: 350),
                      child: SingleChildScrollView(
                          child: model.pages[auth.signupIndex]),
                    )),
                    Consumer<AuthStateManager>(builder: (context, auth, _) {
                      return AppButton(
                          onTap: () {},
                          isActive: model.isActive || auth.username.isNotEmpty,
                          isLoading: model.isLoading,
                          buttonText: "Continue");
                    })
                  ],
                ),
              ),
            );
          });
        });
  }
}
