import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/managers/beneficiaries_state_manager.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/ui/widgets/custom_textfield.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view_model.dart';

class ManageBeneficiariesView extends StatefulWidget {
  const ManageBeneficiariesView({super.key});

  @override
  State<ManageBeneficiariesView> createState() =>
      _ManageBeneficiariesViewState();

  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.manageBeneficiariesPath,
        key: ValueKey(AppPages.manageBeneficiariesPath),
        child: const ManageBeneficiariesView());
  }
}

class _ManageBeneficiariesViewState extends State<ManageBeneficiariesView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ManageBeneficiariesViewModel>(
      model: ManageBeneficiariesViewModel(),
      onModelReady: (model) => model.init(context),
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
                  model.appStateManager.beneficiaries = false;
                  model.beneficiariesStateManager.typeIndex = 0;
                },
                leadingIcon: Icons.arrow_back_ios_new),
            body: Container(
                margin: const EdgeInsets.only(top: 23, bottom: 52),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Consumer<BeneficiariesStateManager>(
                        builder: (context, beneciaries, _) {
                      return Container(
                        decoration: BoxDecoration(
                            color: AppColors.grey,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: AppColors.midGrey)),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(model.types.length, (index) {
                            if (index == model.types.length - 1) {
                              return Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    beneciaries.typeIndex = index;
                                    model.pageController.jumpToPage(index);
                                  },
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 350),
                                    curve: Curves.easeInOut,
                                    height: 45,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 14.5),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: index != beneciaries.typeIndex
                                            ? Colors.transparent
                                            : AppColors.primaryColor,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Text(
                                      model.types[index],
                                      style: AppTextStyles.subHeader.copyWith(
                                          color: index != beneciaries.typeIndex
                                              ? AppColors.bodyTextcolor
                                              : AppColors.white,
                                          fontWeight:
                                              index != beneciaries.typeIndex
                                                  ? FontWeight.w400
                                                  : FontWeight.w500),
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              return GestureDetector(
                                onTap: () {
                                  beneciaries.typeIndex = index;
                                  model.pageController.jumpToPage(index);
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 350),
                                  curve: Curves.easeInOut,
                                  height: 45,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: index != beneciaries.typeIndex
                                          ? Colors.transparent
                                          : AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                    model.types[index],
                                    style: AppTextStyles.subHeader.copyWith(
                                        color: index != beneciaries.typeIndex
                                            ? AppColors.bodyTextcolor
                                            : AppColors.white,
                                        fontWeight:
                                            index != beneciaries.typeIndex
                                                ? FontWeight.w400
                                                : FontWeight.w500),
                                  ),
                                ),
                              );
                            }
                          }),
                        ),
                      );
                    }),
                    const SizedBox(height: 25),
                    SearchTextField(
                      hintText: "Search Beneficiaries",
                      onSaved: model.onSearchSaved,
                    ),
                    const SizedBox(height: 21),
                    Expanded(
                      child: PageView(
                        controller: model.pageController,
                        onPageChanged: (value) {
                          model.beneficiariesStateManager.typeIndex = value;
                        },
                        children: model.pages(),
                      ),
                    )
                  ],
                )),
          ),
        );
      },
    );
  }
}
