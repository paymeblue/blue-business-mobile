import 'package:blue_business/core/models/branches/branch.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class BranchInsightsView extends StatefulWidget {
  final Branch branch;
  const BranchInsightsView({super.key, required this.branch});

  @override
  State<BranchInsightsView> createState() => _BranchInsightsViewState();
}

class _BranchInsightsViewState extends State<BranchInsightsView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<BranchInsightsViewModel>(
        model: BranchInsightsViewModel(),
        builder: (context, model, _) {
          return const Placeholder();
        });
  }
}
