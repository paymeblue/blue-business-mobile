import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

@RoutePage()
class PumpPriceBranchView extends StatelessWidget {
  const PumpPriceBranchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<PumpPriceBranchViewModel>(
      model: PumpPriceBranchViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return const Placeholder();
      },
    );
  }
}
