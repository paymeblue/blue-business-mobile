import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/steppers/filter_tab.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class BranchHomeView extends StatefulWidget {
  const BranchHomeView({super.key});

  @override
  State<BranchHomeView> createState() => _BranchHomeViewState();
}

class _BranchHomeViewState extends State<BranchHomeView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<BranchHomeViewModel>(
      model: BranchHomeViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () => model.goBack(context),
          ),
          body: Container(
            height: MediaQuery.sizeOf(context).height,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FilterTab(
                  selectedValue: model.selectedType,
                  tabs: model.types,
                  onChanged: model.onTypeChanged,
                ),
                15.verticalGap,
                BlueTextField.search(hint: "Search branches"),
                10.verticalGap,
                Expanded(child: emptyBody(model)),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget emptyBody(BranchHomeViewModel model) {
    return SizedBox(
      width: model.size.width,
      child: Column(
        children: [
          AppAssets.images.icons.emptyBranch.svg(),
          Text(
            "No Linked Branches",
            style: AppTextStyles.midHeader,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: Text(
              "Add your branch now to start tracking revenue and performance stats.",
              style: AppTextStyles.subHeader
                  .copyWith(height: 1, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
          35.verticalGap,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: AppButton.primaryWithIcon(
              icon: const Icon(
                Icons.add,
              ),
              title: "Add new branch",
              onTap: () {
                model.goToAddBranch(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
