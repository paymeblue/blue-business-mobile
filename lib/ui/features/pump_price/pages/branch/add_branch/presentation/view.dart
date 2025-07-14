import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/models/branches/branch.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class AddPumpPriceBranchViewArgs {
  const AddPumpPriceBranchViewArgs({this.branch});

  final Branch? branch;
}

@RoutePage()
class AddPumpPriceBranchView extends StatelessWidget {
  const AddPumpPriceBranchView({super.key, required this.args});

  final AddPumpPriceBranchViewArgs args;

  @override
  Widget build(BuildContext context) {
    return BaseView<AddPumpPriceBranchViewModel>(
        model: AddPumpPriceBranchViewModel(),
        builder: (context, model, _) {
          return const Placeholder();
        });
  }
}
