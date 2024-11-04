import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_model.dart';

class TransactionErrorView extends StatefulWidget {
  final String error;
  const TransactionErrorView({super.key, required this.error});

  @override
  State<TransactionErrorView> createState() => _TransactionErrorViewState();
}

class _TransactionErrorViewState extends State<TransactionErrorView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<TransactionErrorViewModel>(
        model: TransactionErrorViewModel(),
        builder: (context, model, _) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 35),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        errorImage(),
                        12.verticalGap,
                        Text(
                          "Transaction Failed",
                          style: AppTextStyles.semiLargeHeader,
                        ),
                        8.verticalGap,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            widget.error,
                            style: AppTextStyles.subText
                                .copyWith(fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  AppButton.primary(
                      title: "Close",
                      onTap: () {
                        context.popUntilPath(RoutePaths.home);
                      })
                ],
              ),
            ),
          );
        });
  }

  Widget errorImage() {
    return Container(
      height: 60.h,
      width: 60.w,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: AppColors.error.withOpacity(.1)),
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.error,
        ),
        alignment: Alignment.center,
        child: Icon(
          Icons.close_rounded,
          color: AppColors.white,
          size: 24.sp,
        ),
      ),
    );
  }
}
