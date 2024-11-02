import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BranchHomneView extends StatelessWidget {
  const BranchHomneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BlueAppBar.primary(
        icon: Icons.arrow_back_ios_new,
        onBackTap: () {
          context.pop();
        },
      ),
    );
  }
}
