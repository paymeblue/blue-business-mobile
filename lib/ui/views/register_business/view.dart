import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/ui/widgets/step_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/app_button.dart';
import 'view_model.dart';

class RegisterBusinessView extends StatefulWidget {
  const RegisterBusinessView({super.key});

  @override
  State<RegisterBusinessView> createState() => _RegisterBusinessViewState();

  static MaterialPage page() {
    return MaterialPage(
      name: AppPages.registerBusinessPath,
      key: ValueKey(AppPages.registerBusinessPath),
      child: const RegisterBusinessView(),
    );
  }
}

class _RegisterBusinessViewState extends State<RegisterBusinessView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<RegisterBusinessViewModel>(
        model: RegisterBusinessViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, _) {
          return Consumer<AuthStateManager>(builder: (context, auth, _) {
            return Scaffold(
              appBar: BlueAppBar.show(
                onBackTap: model.handleBackTap,
                leadingIcon: auth.registerBusinessIndex == 0
                    ? Icons.close
                    : Icons.arrow_back_ios_new,
              ),
              body: Container(
                padding: const EdgeInsets.only(
                    top: 25, bottom: 30, left: 16, right: 16),
                child: Column(
                  children: [
                    StepIndicator(
                      index: auth.registerBusinessIndex,
                      isActive: model.isActive,
                      indicatorCount: model.pages.length,
                    ),
                    const SizedBox(height: 34),
                    Expanded(
                        child: AnimatedContainer(
                      duration: const Duration(milliseconds: 350),
                      child: SingleChildScrollView(
                          child: model.pages[auth.registerBusinessIndex]),
                    )),
                    AppButton(
                        onTap: () {},
                        isActive: model.isActive,
                        buttonText: "Continue")
                  ],
                ),
              ),
            );
          });
        });
  }
}
