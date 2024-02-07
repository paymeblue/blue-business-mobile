import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class ErrorRouteView extends StatefulWidget {
  final String? message;
  final String? newRoute;
  const ErrorRouteView({super.key, required this.message, this.newRoute});

  @override
  State<ErrorRouteView> createState() => _ErrorRouteViewState();
}

class _ErrorRouteViewState extends State<ErrorRouteView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<MissingRouteViewModel>(
      model: MissingRouteViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, _) {
        return Scaffold(
          body: Container(
            height: model.size.height,
            width: model.size.width,
            padding: const EdgeInsets.symmetric(vertical: 50),
            decoration: const BoxDecoration(
              color: AppColors.white,
            ),
            child: Column(
              children: [
                const Spacer(),
                AppAssets.images.icons.error.image(),
                12.verticalGap,
                Text(
                  "Oops!",
                  style: AppTextStyles.header,
                ),
                8.verticalGap,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "Blue says: ${widget.message}",
                    style: AppTextStyles.subText,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: AppButton.primary(
                    title: "Go back",
                    onTap: () {
                      model.close(widget.newRoute);
                    },
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
