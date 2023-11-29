import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/managers/kyc_state_manager.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view_model.dart';
import '../../widgets/step_indicator.dart';

class UpdateKycView extends StatefulWidget {
  const UpdateKycView({super.key});

  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.updateKycPath,
        key: ValueKey(AppPages.updateKycPath),
        child: const UpdateKycView());
  }

  @override
  State<UpdateKycView> createState() => _UpdateKycViewState();
}

class _UpdateKycViewState extends State<UpdateKycView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseView<UpdateKycViewModel>(
      model: UpdateKycViewModel(),
      onModelReady: (model) => model.init(),
      onDispose: (p0) {
        Timeout.dispose();
      },
      builder: (context, model, _) {
        return Consumer<KycStateManager>(builder: (context, kyc, _) {
          return GestureDetector(
            onTap: () {
              Timeout.resetTimer();
            },
            onPanDown: (details) {
              Timeout.resetTimer();
            },
            child: Scaffold(
              appBar: BlueAppBar.show(
                  onBackTap: model.handleBackTap,
                  leadingIcon: kyc.kycIndex == 0
                      ? Icons.close
                      : Icons.arrow_back_ios_new),
              body: Container(
                height: size.height,
                padding: const EdgeInsets.only(
                    top: 25, bottom: 52, left: 16, right: 16),
                child: Column(
                  children: [
                    StepIndicator(
                      index: kyc.kycIndex,
                      isActive: kyc.isActive,
                      indicatorCount: model.pages.length,
                    ),
                    const SizedBox(height: 34),
                    Expanded(
                        child: AnimatedContainer(
                      duration: const Duration(milliseconds: 350),
                      child: model.pages[kyc.kycIndex],
                    )),
                  ],
                ),
              ),
            ),
          );
        });
      },
    );
  }
}
