import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class BusinessFeesView extends StatelessWidget {
  const BusinessFeesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<BusinessFeesViewModel>(
      model: BusinessFeesViewModel(),
      builder: (context, model, _) {
        return Scaffold();
      },
    );
  }
}
