import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class PayOfflineView extends StatefulWidget {
  const PayOfflineView({super.key});

  @override
  State<PayOfflineView> createState() => _PayOfflineViewState();
}

class _PayOfflineViewState extends State<PayOfflineView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseView<PaymentMethodPagesViewModel>(
      model: PaymentMethodPagesViewModel(),
      onModelReady: (model) async => await model.init(context),
      builder: (context, model, _) {
        return Container(
            height: size.height - 70,
            padding: const EdgeInsets.only(
              top: 25,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  "Offline Mode",
                  style: AppTextStyles.header,
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  "Don’t have a smart device? No worries! You can still make payment via:",
                  style: AppTextStyles.subHeader,
                ),
              ),
              const SizedBox(
                height: 34,
              ),
              Container(
                width: size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 52, vertical: 13.5),
                decoration: BoxDecoration(color: AppColors.grey),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Dial this code",
                          style: AppTextStyles.subHeader,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "*35478#",
                          style: AppTextStyles.header.copyWith(
                              fontSize: 24, color: AppColors.primaryColor),
                        )
                      ],
                    ),
                    Text(
                      "OR",
                      style: AppTextStyles.subHeader,
                    ),
                    Column(
                      children: [
                        Text(
                          "Text “pay” to:",
                          style: AppTextStyles.subHeader,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "324245",
                          style: AppTextStyles.header.copyWith(
                              fontSize: 24, color: AppColors.primaryColor),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ]));
      },
    );
  }
}
