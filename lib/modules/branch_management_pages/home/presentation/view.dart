import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
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
                AppAssets.images.icons.emptyBranch.svg(),
              ],
            ),
          ),
        );
      },
    );
  }
}
