import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_model.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<SplashViewModel>(
        model: SplashViewModel(),
        onModelReady: (model) => model.init(context),
        builder: (context, model, _) {
          return Scaffold(
            body: Container(
              height: MediaQuery.sizeOf(context).height,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 130),
              decoration: const BoxDecoration(
                color: AppColors.primary,
              ),
              child: splashLogo(),
            ),
          );
        });
  }

  Widget splashLogo() {
    return SizedBox(
      height: 70.h,
      child: Image.asset(
        AppAssets.images.logos.splashLogo.path,
        fit: BoxFit.contain,
      ),
    );
  }
}
